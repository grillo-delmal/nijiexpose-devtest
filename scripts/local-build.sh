#!/usr/bin/env bash

set -e

flatpak-builder --default-branch=nightly --force-clean --repo=./repo-dir ./build-dir io.github.grillo_delmal.nijiexpose.yml

flatpak build-bundle \
    --runtime-repo=https://flathub.org/repo/flathub.flatpakrepo \
    ./repo-dir \
    nijiexpose.x86_64.flatpak \
    io.github.grillo_delmal.nijiexpose nightly
flatpak build-bundle \
    --runtime \
    ./repo-dir \
    nijiexpose.x86_64.debug.flatpak \
    io.github.grillo_delmal.nijiexpose.Debug nightly

# flatpak --user -y install nijiexpose.x86_64.flatpak
# flatpak --user -y install nijiexpose.x86_64.debug.flatpak