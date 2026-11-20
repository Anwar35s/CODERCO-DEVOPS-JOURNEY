#!/usr/bin/env bash
set -euo pipefail

read -r -p "Enter filename to check: " filename

if [[ ! -f $filename ]]; then
  printf "File '%s' does not exist or is not a regular file.\n" "$filename"
  exit 1
fi

printf "\nFile '%s' exists.\n" "$filename"

if [[ -r $filename ]]; then
  printf '✓ File is readable\n'
else
  printf '✗ File is not readable\n'
fi

if [[ -w $filename ]]; then
  printf '✓ File is writable\n'
else
  printf '✗ File is not writable\n'
fi

if [[ -x $filename ]]; then
  printf '✓ File is executable\n'
else
  printf '✗ File is not executable\n'
fi
