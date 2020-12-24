#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fe5191ce0e1e96aae6eb1c8

echo "stackbit-build.sh: finished build"
