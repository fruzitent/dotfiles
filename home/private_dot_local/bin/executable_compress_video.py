#!/usr/bin/env python3

from os import devnull
from pathlib import Path
from subprocess import CompletedProcess, run
from sys import argv, stderr

MB_TO_KB: float = 8000


def main() -> None:
    src_file: Path = Path(argv[1])
    dst_file: Path = src_file.parent.joinpath("output", src_file.name)

    try:
        # TODO: add more sanity checks
        compress_video(src_file, dst_file)
    except BaseException as error:
        print(error, file=stderr)
    finally:
        Path("ffmpeg2pass-0.log").unlink(missing_ok=True)
        Path("ffmpeg2pass-0.log.mbtree").unlink(missing_ok=True)


def compress_video(
    src_file: Path,
    dst_file: Path,
    *,
    dst_arate_kbps: float = 128,
    dst_target_size_mb: float = 25,
) -> None:
    """https://trac.ffmpeg.org/wiki/Encode/H.264#twopass"""
    src_duration_s: float = get_duration_s(src_file)

    dst_vrate_kbps: float = (
        dst_target_size_mb * MB_TO_KB / src_duration_s
    ) - dst_arate_kbps

    dst_file.parent.mkdir(exist_ok=True, parents=True)

    acodec: str = "aac"
    vcodec: str = "libx264"

    run(
        args=[
            "ffmpeg",
            "-y",
            "-i",
            src_file,
            "-b:v",
            f"{dst_vrate_kbps:.0f}k",
            "-c:v",
            vcodec,
            "-vsync",
            "cfr",
            "-pass",
            "1",
            "-f",
            "null",
            devnull,
        ],
        capture_output=False,
        check=False,
    )

    run(
        args=[
            "ffmpeg",
            "-y",
            "-i",
            src_file,
            "-b:a",
            f"{dst_arate_kbps:.0f}k",
            "-c:a",
            acodec,
            "-b:v",
            f"{dst_vrate_kbps:.0f}k",
            "-c:v",
            vcodec,
            "-pass",
            "2",
            dst_file,
        ],
        capture_output=False,
        check=False,
    )


def get_duration_s(src_file: Path) -> float:
    process: CompletedProcess = run(
        args=[
            "ffprobe",
            "-i",
            src_file,
            "-show_entries",
            "format=duration",
            "-of",
            "csv=p=0",
            "-v",
            "quiet",
        ],
        capture_output=True,
        check=False,
    )
    stdout: str = process.stdout.decode()
    return float(stdout)


if __name__ == "__main__":
    main()
