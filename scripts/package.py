import argparse
import glob
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
            default = Path(__file__) / "../out"
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


class PatchDefinition:
    patch: str
    game: str

    info: Dict

    def __init__(self: Self, patch_name: str, game: str):
        self.patch = patch_name
        self.game = game

        path = Path(__file__) / f"../patch-definitions/{patch_name}/{game}.json"
        g_logger.info(f"Reading {path}...")
        with open(path, 'r', encoding = "utf-8") as info_file:
            self.info = json.load(info_file)


def parse_patch_selection(args: argparse.Namespace) -> list[PatchDefinition]:
    g_logger.info("Parsing patch selection...")
    patches: list[PatchDefinition] = []

    path_definitions_directory = Path(__file__) / "../patch-definitions/"
    if len(args.patch) == 0 and args.all:
        with os.scandir(path_definitions_directory) as entries:
            args.patch = [entry.name for entry in entries if entry.is_dir]

    all_games = len(args.game) == 0 and args.all

    for patch in args.patch:
        patch_directory = Path(__file__) / f"../patch-definitions/{patch}/"
        if not patch_directory.is_dir():
            g_logger.warning(f"No patch definitions directory with name \"{patch}\" exists")
            continue

        if all_games:
            args.game = [Path(entry).name[0:-len(".json")] for entry in glob.glob(f"{patch_directory}/*.json")]

        for game in args.game:
            info_path = patch_directory / f"{game}.json"
            if not info_path.is_file():
                g_logger.warning(f"Patch \"{patch}\" has no definition for game \"{game}\"")
                continue

            patches += [PatchDefinition(patch, game)]

    if len(patches) == 0:
        g_logger.error("No patches matched the given filter")

    return patches


def load_config() -> Dict:
    g_logger.info("Reading config.json...")
    config_path = Path(__file__).parent / "config.json"
    if not config_path.is_file():
        raise FileNotFoundError(
            f"Could not find {config_path}\n"
            f"Please copy {Path(__file__).parent / 'config.json.sample'} and set its necessary values"
        )

    with open(config_path, 'r', encoding = "utf-8") as config_file:
        config = json.load(config_file)

    return config


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

    return coalesc3_path / f"../out/{game}/{platform}_{language}/"


def copy_file(source_file: Path, inner_path: Path, archive_file: zipfile.ZipFile) -> None:
    if not source_file.exists():
        g_logger.warning(f"File \"{source_file}\" not found")
        return

    g_logger.info(f"Adding \"{source_file}\" to archive at \"{inner_path}\"")
    archive_file.write(source_file, inner_path)


def copy_directory(source_directory: Path, inner_path: Path, archive_file: zipfile.ZipFile) -> None:
    if not source_directory.exists():
        g_logger.warning(f"Source directory \"{source_directory}\" not found")
        return

    if source_directory.is_file():
        copy_file(
            source_file=source_directory, 
            inner_path=inner_path, 
            archive_file=archive_file
        )
        return

    for filename in os.listdir(source_directory):
        copy_directory(
            source_directory=source_directory / filename, 
            inner_path=inner_path / filename, 
            archive_file=archive_file
        )


def copy_assets(source_root: Path, archive_file: zipfile.ZipFile, patch_assets_info: Dict, patch: str, game: str) -> None:
    for directory in patch_assets_info.keys():
        if directory == ".":
            # Refers to the root gamedata directory in this repo -- not assets
            continue

        for asset_path in patch_assets_info[directory]:
            source_file = source_root / asset_path
            copy_file(source_file, Path(patch) / "gamedata" / game / directory / source_file.name, archive_file)


def copy_profiles(profiles_root: Path, archive_file: zipfile.ZipFile, patch_profiles: list[str], patch: str, game: str) -> None:
    for profile in patch_profiles:
        copy_file(
            source_file=profiles_root / profile, 
            inner_path=Path(patch) / "profiles" / game / profile, 
            archive_file=archive_file,
        )


def package_patch(patch: PatchDefinition, args: argparse.Namespace, config: Dict) -> None:
    print(f"Packaging patch {patch.patch}/{patch.game}...")
    asset_path_root = Path(config["paths"]["patch-assets"][patch.patch][patch.game])
    if not asset_path_root.exists():
        raise FileNotFoundError(f"Patch asset path \"{asset_path_root}\" not found")

    output_dir = Path(f"{args.output}")
    os.makedirs(output_dir, exist_ok = True)

    archive_path = output_dir / f"{patch.game}-{patch.patch}.zip"
    if archive_path.exists():
        os.remove(archive_path)
    with zipfile.ZipFile(archive_path, 'x') as archive_file:
        if "script" in patch.info.keys():
            g_logger.info("===Script stage===")
            script_directory = build_script(patch.info["script"], config, args.clean_script)
            for script_path in patch.info["script"]["files"]:
                copy_directory(
                    source_directory=script_directory / script_path, 
                    inner_path=Path(patch.patch) / Path("gamedata") / patch.game / script_path,
                    archive_file=archive_file,
                )

        g_logger.info("===Asset stage===")
        copy_assets(
            game=patch.game,
            patch=patch.patch,
            source_root=asset_path_root, 
            archive_file=archive_file, 
            patch_assets_info=patch.info["gamedata"],
        )

        g_logger.info("===Profiles stage===")
        copy_profiles(
            game=patch.game,
            patch=patch.patch,
            profiles_root=get_patch_root(patch.patch) / "profiles" / patch.game, 
            archive_file=archive_file, 
            patch_profiles=patch.info["profiles"], 
        )

        if "." in patch.info["gamedata"].keys():
            g_logger.info("===Gamedata stage===")
            gamedata_path = get_patch_root(patch.patch) / "gamedata" / patch.game
            for file in patch.info["gamedata"]["."]:
                copy_file(
                    source_file=gamedata_path / file,  
                    inner_path=Path(patch.patch) / "gamedata"/ patch.game / file,
                    archive_file=archive_file,
                )


def main() -> None:
    setup_logger()

    argument_parser = ArgumentParser()
    args = argument_parser.parse()

    config = load_config()
    patch_definitions = parse_patch_selection(args)

    for patch in patch_definitions:
        try:
            package_patch(patch, args, config)
            print()
        except Exception as e:
            g_logger.error(f"Failed to package patch {patch.patch}/{patch.game}: {e}")

    print("Done!")


if __name__ == "__main__":
    main()
