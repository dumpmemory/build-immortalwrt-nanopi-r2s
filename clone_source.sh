#!/bin/bash

git clone "https://github.com/immortalwrt/immortalwrt.git" --branch "openwrt-23.05" --single-branch "immortalwrt"
pushd "immortalwrt"; ./scripts/feeds update -a; ./scripts/feeds install -a; popd
