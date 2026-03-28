#!/usr/bin/env bash

set -euo pipefail

if [ ! -f package.json ]; then
  echo "package.json not found in current directory"
  exit 1
fi

echo "Running tests"
npm test -- --run

if npm run | grep -q " typecheck"; then
  echo "Running typecheck"
  npm run typecheck
else
  echo "Skipping typecheck because no 'typecheck' script is defined"
fi
