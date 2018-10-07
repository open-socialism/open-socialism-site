#!/bin/bash
set -Eexuo pipefail

# bundle exec jekyll build

ERRORS=$(find _site -name "*.html" -exec bin/spell-check-file.sh {} \;)

if [ -z "$ERRORS" ]; then
  echo "Shit be broke"
fi
