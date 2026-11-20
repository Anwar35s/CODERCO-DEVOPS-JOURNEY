#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 || $# -gt 2 ]]; then
  printf 'Usage: %s SOURCE_DIRECTORY [BACKUP_DIRECTORY]\n' "$0" >&2
  exit 2
fi

source_dir=$1
backup_dir=${2:-./backups}

if [[ ! -d $source_dir ]]; then
  printf 'Source directory does not exist: %s\n' "$source_dir" >&2
  exit 1
fi

source_path=$(cd "$source_dir" && pwd -P)

if [[ $source_path == / ]]; then
  printf 'Refusing to archive the filesystem root.\n' >&2
  exit 1
fi

source_name=${source_path##*/}
mkdir -p "$backup_dir"
backup_path=$(cd "$backup_dir" && pwd -P)

case "$backup_path/" in
  "$source_path/"*)
    printf 'Backup directory must be outside the source directory.\n' >&2
    exit 1
    ;;
esac

timestamp=$(date '+%Y%m%d_%H%M%S')
archive="$backup_path/${source_name}_${timestamp}.tar.gz"

tar -czf "$archive" -C "${source_path%/*}" "$source_name"
printf 'Created backup: %s\n' "$archive"
