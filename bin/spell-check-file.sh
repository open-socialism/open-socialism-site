#!/bin/bash
set -Eeuo pipefail

FILE=$1

RESULT=$(hunspell -d custom-dict,en_US -l "$FILE")

if [[ "$RESULT" =~ [a-zA-Z0-9] ]]; then
  echo "Spelling mistakes in $FILE"
  echo "$RESULT"
fi
