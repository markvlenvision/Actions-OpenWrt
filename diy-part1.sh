#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

#git reset --hard 0e72b739ca4dd6ee19ae05e9d4a0ac4db5546f65

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source

echo '#src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
echo '#src-git gngpp https://github.com/gngpp/xunlei' >>feeds.conf.default

echo 'src-git kenzok8 https://github.com/markvlenvision/small-package' >>feeds.conf.default
echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman' >>feeds.conf.default
echo 'src-git destan19 https://github.com/destan19/OpenAppFilter.git' >>feeds.conf.default


git clone https://github.com/fw876/helloworld.git package/lean/helloworld
git -C package/lean/helloworld reset --hard b7451f4dc495d74fe5dc5a4597d659f9515dd049

git clone https://github.com/gngpp/xunlei package/lean/xunlei


#https://github.com/openwrt/luci/tree/master/applications/luci-app-acl
