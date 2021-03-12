#!/bin/bash
cd /home/runner/immortalwrt

mkdir package/swc
pushd "package/swc"
git init
git remote add origin https://github.com/songchenwen/nanopi-r2s.git
git config core.sparsecheckout true
echo "luci-app-r2sflasher" >> .git/info/sparse-checkout
git pull --depth 1 origin master
popd

# Enter your commands here, e.g.
# echo "Start build!"
make defconfig
