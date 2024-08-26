#!/usr/bin/env bash

source ./scripts/semver.sh

# Create and update nijiexpose metadata if it doesn't exist
[ ! -d "./dep.build/nijiexpose/.git" ] && ./update-nijiexpose.sh

VERSION=$(semver ./dep.build/nijiexpose)
TIMESTAMP=$(date -u +%Y%m%dT%H%M%SZ)
DATE=$(date -I -u )

sed -i -E \
    "s/<release .*>/<release version=\"$VERSION.$TIMESTAMP\" date=\"$DATE\">/" \
    io.github.grillo_delmal.nijiexpose.metainfo.xml