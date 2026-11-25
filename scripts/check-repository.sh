#!/usr/bin/env bash

set -euo pipefail

PROJECT_PATH="${1:-}"

if [[ -z "$PROJECT_PATH" ]]; then
  echo "ERROR: Provide a project path as the first argument."
  exit 1
fi

if [[ ! -f "$PROJECT_PATH" ]]; then
  echo "ERROR: Project file not found: $PROJECT_PATH"
  exit 1
fi

if [[ ! -s "README.md" ]]; then
  echo "ERROR: README.md is missing or empty."
  exit 1
fi

echo "Repository check passed."
echo "Project: $PROJECT_PATH"
echo "README.md is present and not empty."