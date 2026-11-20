#!/usr/bin/env bash
set -euo pipefail

read -r -p "Enter first number: " first
read -r -p "Enter second number: " second

number_pattern='^-?([0-9]+([.][0-9]*)?|[.][0-9]+)$'
if [[ ! $first =~ $number_pattern || ! $second =~ $number_pattern ]]; then
  printf 'Please enter valid numbers.\n' >&2
  exit 1
fi

awk -v a="$first" -v b="$second" '
BEGIN {
  printf "\nResults:\n"
  printf "%g + %g = %g\n", a, b, a + b
  printf "%g - %g = %g\n", a, b, a - b
  printf "%g × %g = %g\n", a, b, a * b

  if (b == 0) {
    printf "%g ÷ %g = undefined (cannot divide by zero)\n", a, b
  } else {
    printf "%g ÷ %g = %g\n", a, b, a / b
  }
}'
