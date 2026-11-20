#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s INTEGER INTEGER [ + | - | * | / ]\n' "$0" >&2
  exit 2
}

[[ $# -ge 2 && $# -le 3 ]] || usage

num1=$1
num2=$2
operator=${3:-+}

if ! [[ $num1 =~ ^-?[0-9]+$ && $num2 =~ ^-?[0-9]+$ ]]; then
  printf 'Please provide whole numbers.\n' >&2
  exit 2
fi

case $operator in
  +) result=$((num1 + num2)) ;;
  -) result=$((num1 - num2)) ;;
  \*) result=$((num1 * num2)) ;;
  /)
    if (( num2 == 0 )); then
      printf 'Cannot divide by zero.\n' >&2
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *) usage ;;
esac

printf '%s %s %s = %s\n' "$num1" "$operator" "$num2" "$result"
