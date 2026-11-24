import argparse
import json
import logging
import os
import subprocess
import zipfile

from pathlib import Path
from typing import Dict, Self


g_logger = logging.getLogger(__name__)

def setup_logger() -> None:
    logging_formatter = logging.Formatter('[%(levelname)s] %(message)s')
    logging_stream_handler = logging.StreamHandler()
    logging_stream_handler.setFormatter(logging_formatter)
    g_logger.addHandler(logging_stream_handler)


class ArgumentParser:
    _parser: argparse.ArgumentParser

    def __init__(self: Self):
        self._parser = argparse.ArgumentParser()

        self._parser.add_argument(
            "--output", "-o",
            help = "Specify the output directory",
            type = Path,
            default = Path("./out/")
        )

        self._parser.add_argument(
            "--patch", "-p",
            help = "Specify which patches to build",
            type = str,
            nargs = '*',
            default = []
        )

        self._parser.add_argument(
            "--game", "-g",
            help = "Specify which games to build the patches for",
            type = str,
            nargs = '*',
            default = []
        )

        self._parser.add_argument(
            "--all", "-a",
            help = "Build all patches for all games. Can be filtered with --patch and --game arguments",
            action = "store_true",
            default = False
        )

        self._parser.add_argument(
            "--clean-script", "-c",
            help = "Perform a clean script build",
            action = "store_true",
            default = False
        )

        self._parser.add_argument(
            "--log-level", "-l",
            help = "Set logging verbosity level",
            type = str,
            choices = ["critical", "fatal", "error", "warn", "warning", "info", "debug"],
            default = "warning",
        )


    def parse(self: Self) -> argparse.Namespace:
        args = self._parser.parse_args()

        if not args.all:
            if len(args.patch) == 0:
                raise RuntimeError("No patches specified")
            if len(args.game) == 0:
                raise RuntimeError("No games specified")
        elif len(args.patch) > 0 and len(args.game) > 0:
            g_logger.warning(
                "You specified an explicit list of patches and games, "
                "so --all will be ignored"
            )
            args.all = False

        g_logger.setLevel(str.upper(args.log_level))

        return args


def load_config() -> Dict:
    g_logger.info("Reading config.json...")
    if not Path("./config.json"):
        raise FileNotFoundError(
            "Could not find ./config.json\n"
            "Please copy ./config.json.sample and set its necessary values"
        )

    with open("./config.json", 'r', encoding = "utf-8") as config_file:
        config = json.load(config_file)

    return config


def load_assets_info() -> Dict:
    g_logger.info("Reading assets.json...")
    with open("./assets.json", 'r', encoding = "utf-8") as assets_info_file:
        assets_info = json.load(assets_info_file)

    return assets_info


def get_patch_root(patch: str) -> Path:
    return Path(__file__) / ".." / ".." / "patches" / patch


def build_script(script_info: Dict, config: Dict, clean: bool) -> Path:
    print("Building script...")
    python_command = config["paths"]["tools"]["python"]
    coalesc3_path = Path(config["paths"]["tools"]["coalesc3"])

    game = script_info["game"]
    platform = script_info["platform"]
    language = script_info["language"]

    args = [
        python_command,
        coalesc3_path,
        game,
        platform,
        language,
    ]
    if clean:
        args += ["--clean"]

    g_logger.info(f"Executing {args}")
    process = subprocess.run(
        args = args,
        cwd = coalesc3_path.parent
    )

    if process.returncode != 0:
        raise RuntimeError(f"Failed to build script for game {game} - {platform} - {language}")

    return coalesc3_path / ".." / "out" / game / f"{platform}_{language}" / script_info["file"]


def copy_file(source_file: Path, archived_file_path: Path, archive_file: zipfile.ZipFile) -> None:
    if not source_file.exists():
        g_logger.warning(f"File \"{source_file}\" not found")
        return

    g_logger.info(f"Adding \"{source_file}\" to archive at \"{archived_file_path}\"")
    archive_file.write(source_file, archived_file_path)


def copy_directory(source_directory: Path, archived_directory_path: Path, archive_file: zipfile.ZipFile) -> None:
    if not source_directory.exists():
        g_logger.warning(f"Source directory \"{source_directory}\" not found")
        return

    if source_directory.is_file():
        copy_file(source_directory, archived_directory_path, archive_file)
        return

    for filename in os.listdir(source_directory):
        copy_directory(source_directory / filename, archived_directory_path / filename, archive_file)


def copy_assets(source_root: Path, archive_file: zipfile.ZipFile, patch_assets_info: Dict) -> None:
    for directory in patch_assets_info.keys():
        if directory == ".":
            # Refers to the root gamedata directory in this repo -- not assets
            continue

        for asset_path in patch_assets_info[directory]:
            source_file = source_root / asset_path
            copy_file(source_file, Path("gamedata") / directory / source_file.name, archive_file)


def copy_profiles(profiles_root: Path, archive_file: zipfile.ZipFile, patch_profiles: list[str]) -> None:
    for profile in patch_profiles:
        copy_file(profiles_root / profile, Path("profiles") / profile, archive_file)


def package_patch(patch: str, game: str, args: argparse.Namespace, config: Dict, assets_info: Dict) -> None:
    print(f"Packaging patch {patch} for game {game}...")
    assets_info = assets_info[patch][game]

    asset_path_root = Path(config["paths"]["patch-assets"][patch][game])
    if not asset_path_root.exists():
        raise FileNotFoundError(f"Patch asset path \"{asset_path_root}\" not found")

    output_dir = Path(f"{args.output}")
    os.makedirs(output_dir, exist_ok = True)

    archive_path = output_dir / f"{game}-{patch}.zip"
    if archive_path.exists():
        os.remove(archive_path)
    with zipfile.ZipFile(archive_path, 'x') as archive_file:
        if "script" in assets_info.keys():
            g_logger.info("===Script stage===")
            script_path = build_script(assets_info["script"], config, args.clean_script)
            copy_directory(script_path, Path("gamedata") / script_path.name, archive_file)

        g_logger.info("===Asset stage===")
        copy_assets(asset_path_root, archive_file, assets_info["gamedata"])

        g_logger.info("===Profiles stage===")
        copy_profiles(get_patch_root(patch) / "profiles" / game, archive_file, assets_info["profiles"])

        if "." in assets_info["gamedata"].keys():
            g_logger.info("===Gamedata stage===")
            gamedata_path = get_patch_root(patch) / "gamedata" / game
            for file in assets_info["gamedata"]["."]:
                copy_file(gamedata_path / file, Path("gamedata") / file, archive_file)


def main() -> None:
    setup_logger()

    argument_parser = ArgumentParser()
    args = argument_parser.parse()

    config = load_config()
    assets_info = load_assets_info()

    for patch in args.patch:
        for game in args.game:
            try:
                package_patch(patch, game, args, config, assets_info)
            except Exception as e:
                g_logger.error(f"Failed to package patch {patch} for game {game}: {e}")


if __name__ == "__main__":
    main()
