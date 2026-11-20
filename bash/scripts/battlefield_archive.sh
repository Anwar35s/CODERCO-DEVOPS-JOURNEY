#!/usr/bin/env bash
set -euo pipefail

battlefield="Battlefield"
archive="Archive"

mkdir -p "$battlefield" "$archive"
touch "$battlefield/knight.txt" "$battlefield/sorcerer.txt" "$battlefield/rogue.txt"

if [[ -f "$battlefield/knight.txt" ]]; then
  mv "$battlefield/knight.txt" "$archive/"
  printf 'knight.txt has been moved to %s.\n' "$archive"
else
  printf 'knight.txt was not found, so nothing was moved.\n'
fi

printf '\nContents of %s:\n' "$battlefield"
ls -la "$battlefield"

printf '\nContents of %s:\n' "$archive"
ls -la "$archive"
