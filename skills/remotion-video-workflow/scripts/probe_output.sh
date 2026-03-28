#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <media-file>"
  exit 1
fi

media_file="$1"

if ! command -v ffprobe >/dev/null 2>&1; then
  echo "ffprobe is not installed or not available in PATH"
  exit 1
fi

ffprobe \
  -v error \
  -show_entries format=duration:stream=codec_name,width,height,r_frame_rate \
  -of json \
  "$media_file"
