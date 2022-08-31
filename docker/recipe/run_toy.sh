#!/bin/bash

#
SCRIPT_DIR=$(cd "$(dirname "$(readlink -f -n "${BASH_SOURCE[0]}" )" )" && pwd -P)
ROOT_DIR="$(dirname $(dirname "$SCRIPT_DIR"))"

#
cd ${ROOT_DIR}

#
git pull && git submodule update --init --recursive

#
source ./docker/launch.sh
pip3 install numpy pyyaml

#
mkdir build && cd build

#
cmake ..

# test ufs-wm build
ctest -VV -R docker_build_ufs

#
exit 0
