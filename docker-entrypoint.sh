#!/bin/bash
set -e

cd /source-code

# default kernel config
make ARCH=arm64 O=/build-output olddefconfig

# custom kernel config
# make ARCH=arm64 O=/build-output menuconfig

# build kernel
make ARCH=arm64 O=/build-output -j`nproc`

tail -f /dev/null
