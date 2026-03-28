#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <composition-id> <output-file> [entry-file]"
  exit 1
fi

composition_id="$1"
output_file="$2"
entry_file="${3:-src/index.ts}"

echo "Rendering video composition '${composition_id}' from '${entry_file}' to '${output_file}'"
npx remotion render "$entry_file" "$composition_id" "$output_file"
