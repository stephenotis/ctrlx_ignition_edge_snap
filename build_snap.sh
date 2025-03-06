#!/bin/bash

TARGET_ARCH=$1
echo TARGET_ARCH: ${TARGET_ARCH}
echo --- clean snap
snapcraft clean --destructive-mode
echo --- build snap with architecture ${TARGET_ARCH}
snapcraft --destructive-mode --enable-experimental-target-arch --target-arch=${TARGET_ARCH}
echo --- clean snap
snapcraft clean --destructive-mode