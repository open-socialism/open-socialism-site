#!/bin/bash
set -Eeuo pipefail

echo "Building site.."

bundle exec jekyll build

echo "Checking spelling.."

ERRORS=$(find ./_site -name "*.html" -exec bin/spell-check-file.sh {} \;)

if [[ -n "$ERRORS" ]]; then
  echo "$ERRORS"
  exit 1
else
  echo "No spelling mistakes!"
fi
