#!/bin/bash

echo "Running Netlify CLI command..."

npx netlify-cli@20 --help

echo "> npx netlify-cli@20 $*"

set -o pipefail
OUTPUT=$(bash -c "npx netlify-cli@20 $*" | tr '\n' ' ') || exit $?
set +o pipefail

echo "Done!"

NETLIFY_OUTPUT=$(echo "$OUTPUT")

echo "NETLIFY_OUTPUT=$NETLIFY_OUTPUT" >> $GITHUB_OUTPUT