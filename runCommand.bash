#!/usr/bin/env bash

DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))  # get the directory path

# shellcheck disable=SC2155
export SCRIPT_NAME=$(basename "${DIR}")
export LOG_PATH=/data
export LOG_TO_CONSOLE=true

# shellcheck disable=SC1090
LOG_LEVEL="debug"
source "$DIR/utils.bash"

set -euo pipefail

python raiseDesk.py
