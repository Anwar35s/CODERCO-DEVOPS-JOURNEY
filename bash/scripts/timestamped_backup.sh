#!/usr/bin/env bash
set -euo pipefail

read -r -p "Enter source directory: " source_dir

if [[ ! -d $source_dir ]]; then
  printf "Source directory does not exist: %s\n" "$source_dir" >&2
  exit 1
fi

# Resolve the path so filenames beginning with a dash are handled safely.
source_dir=$(cd "$source_dir" && pwd -P)

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')
backup_dir="backup_$timestamp"

mkdir -p "$backup_dir"
printf 'Backup directory created: %s\n' "$backup_dir"
printf 'Copying .txt files...\n'

shopt -s nullglob
files=( "$source_dir"/*.txt )
count=${#files[@]}

if (( count > 0 )); then
  cp -p "${files[@]}" "$backup_dir/"
fi

printf '\nBackup complete! Files backed up: %d\n' "$count"
