#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 2 ]]; then
  printf 'Usage: %s SOURCE_DIRECTORY DESTINATION_DIRECTORY\n' "$0" >&2
  exit 2
fi

source_dir=$1
destination_dir=$2

if [[ ! -d $source_dir ]]; then
  printf 'Source directory does not exist: %s\n' "$source_dir" >&2
  exit 1
fi

mkdir -p "$destination_dir"
shopt -s nullglob
files=( "$source_dir"/*.txt )

if (( ${#files[@]} == 0 )); then
  printf 'No .txt files found in %s\n' "$source_dir"
  exit 0
fi

cp -p "${files[@]}" "$destination_dir/"
printf 'Copied %d .txt file(s) to %s\n' "${#files[@]}" "$destination_dir"
