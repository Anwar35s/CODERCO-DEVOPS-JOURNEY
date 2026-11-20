#!/usr/bin/env bash
set -euo pipefail

directory="bash_demo"

if [[ -e $directory && ! -d $directory ]]; then
  printf "'%s' exists but is not a directory.\n" "$directory" >&2
  exit 1
fi

mkdir -p "$directory"
cd "$directory"

today=$(date '+%Y-%m-%d')
printf 'This file was created by a Bash script on %s\n' "$today" > demo.txt

printf "Directory '%s' is ready. File 'demo.txt' created.\n" "$directory"
printf '\nFile contents:\n'
cat demo.txt
