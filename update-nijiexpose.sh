#!/usr/bin/env bash

mkdir -p dep.build

# Delete the old working directory
find ./dep.build -mindepth 1 -maxdepth 1 -exec rm -rf -- {} +

# Download nijiexpose
pushd dep.build
git clone https://github.com/nijigenerate/nijiexpose.git
popd #dep.build

cat <<EOL > latest-nijiexpose.yml
type: git
url: https://github.com/nijigenerate/nijiexpose.git
commit: $(git -C ./dep.build/nijiexpose rev-parse HEAD)
disable-shallow-clone: true
EOL

