#!/usr/bin/env bash
set -Eeuxmo pipefail
DIR="$(dirname "$(command -v greadlink >/dev/null 2>&1 && greadlink -f "$0" || readlink -f "$0")")"

# --- Config
IMAGE_NAME="elasticsearch-oss"

# ---
VERSION=$(cat "$DIR/VERSION")

docker build -t "$IMAGE_NAME:$VERSION" "$DIR"