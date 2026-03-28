#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <still-id> <output-file> [entry-file]"
  exit 1
fi

still_id="$1"
output_file="$2"
entry_file="${3:-src/index.ts}"

echo "Rendering still '${still_id}' from '${entry_file}' to '${output_file}'"
npx remotion still "$entry_file" "$still_id" "$output_file"
