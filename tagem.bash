#!/usr/bin/env bash

# Usage:
# first chmod -x tagem.sh
#   ./tagem.sh 1.x "Release v1.x with resource fixes"
#
# This will create a tag "v1.x" with the given message, 
# then push that tag to origin.

if [ $# -lt 2 ]; then
  echo "Usage: $0 <version> <message>"
  exit 1
fi

VERSION=$1
MESSAGE=$2

# Create an annotated tag
git tag -a "v${VERSION}" -m "${MESSAGE}"

# Push just that one tag
git push origin "v${VERSION}"
