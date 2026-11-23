import argparse
import json
import os
import warnings
import zipfile

from pathlib import Path
from typing import Dict, Self


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
            "--clean", "-c",
            help = "Perform a clean build (destroy prior build artifacts first)",
            action = "store_true",
            default = False
        )


    def parse(self: Self) -> argparse.Namespace:
        args = self._parser.parse_args()

        if not args.all:
            if len(args.patch) == 0:
                raise RuntimeError("No patches specified")
            if len(args.game) == 0:
                raise RuntimeError("No games specified")
        elif len(args.patch) > 0 and len(args.game) > 0:
            warnings.warn(
                "You specified an explicit list of patches and games, "
                "so --all will be ignored",
                UserWarning
            )
            args.all = False

        return args


def load_config() -> Dict:
    if not Path("./config.json"):
        raise FileNotFoundError(
            "Could not find ./config.json\n"
            "Please copy ./config.json.sample and set its necessary values"
        )

    with open("./config.json", 'r', encoding = "utf-8") as config_file:
        config = json.load(config_file)

    return config


def load_assets_info() -> Dict:
    with open("./assets.json", 'r', encoding = "utf-8") as assets_info_file:
        assets_info = json.load(assets_info_file)

    return assets_info


def copy_file(source_file: Path, archived_file_path: Path, archive_file: zipfile.ZipFile) -> None:
    if not source_file.exists():
        warnings.warn(f"Asset file \"{source_file}\" not found")
        return

    archive_file.write(source_file, archived_file_path)


def copy_assets(source_root: Path, archive_file: zipfile.ZipFile, patch_assets_info: Dict) -> None:
    for directory in patch_assets_info.keys():
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
        copy_assets(asset_path_root, archive_file, assets_info["gamedata"])

        profiles_root = Path(__file__) / ".." / ".." / "patches" / patch / "profiles" / game
        copy_profiles(profiles_root, archive_file, assets_info["profiles"])


def main() -> None:
    argument_parser = ArgumentParser()
    args = argument_parser.parse()

    config = load_config()
    assets_info = load_assets_info()

    for patch in args.patch:
        for game in args.game:
            try:
                package_patch(patch, game, args, config, assets_info)
            except Exception as e:
                print(f"Failed to package patch {patch} for game {game}: {e}")


if __name__ == "__main__":
    main()
