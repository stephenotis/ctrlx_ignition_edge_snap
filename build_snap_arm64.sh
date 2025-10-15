#!/bin/bash

TARGET_ARCH=arm64
echo TARGET_ARCH: ${TARGET_ARCH}
echo --- clean snap
snapcraft clean 
echo --- build snap with architecture ${TARGET_ARCH}
#snapcraft --destructive-mode --enable-experimental-target-arch --target-arch= ${TARGET_ARCH} 
snapcraft --build-for=arm64
echo --- clean snap
snapcraft clean 