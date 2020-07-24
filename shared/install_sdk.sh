#!/bin/bash

pushd sdk > /dev/null

echo "romulus-delta" | . oecore-x86_64-arm1176jzs-toolchain-nodistro.0.sh

popd > /dev/null

