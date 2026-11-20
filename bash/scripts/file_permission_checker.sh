#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  printf 'Usage: %s PATH\n' "$0" >&2
  exit 2
fi

path=$1

if [[ ! -e $path ]]; then
  printf 'Path does not exist: %s\n' "$path" >&2
  exit 1
fi

printf 'Permission check for: %s\n' "$path"

if [[ -r $path ]]; then
  printf 'Readable: yes\n'
else
  printf 'Readable: no\n'
fi

if [[ -w $path ]]; then
  printf 'Writable: yes\n'
else
  printf 'Writable: no\n'
fi

if [[ -x $path ]]; then
  printf 'Executable/searchable: yes\n'
else
  printf 'Executable/searchable: no\n'
fi
