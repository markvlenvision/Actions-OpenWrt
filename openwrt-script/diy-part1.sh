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

#自定义版本 Version update to R24.9.18
#git reset --hard 92d4a09c0a7e1ecca39332f267514f7e29c9a850
#git checkout v25.12.2

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


# Add a feed source
#echo 'src-git oaf https://github.com/destan19/OpenAppFilter.git' >>feeds.conf.default
#echo 'src-git xunlei https://github.com/gngpp/xunlei' >>feeds.conf.default


git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git package/openwrt-passwall-packages
git clone https://github.com/Openwrt-Passwall/openwrt-passwall2.git  package/openwrt-passwall2


#
##diskman
#git clone https://github.com/markvlenvision/luci-app-diskman.git package/luci-app-diskman
#
##xunlei
#git clone https://github.com/gngpp/xunlei package/luci-app-xunlei
#
##OpenAppFilter
#git clone https://github.com/destan19/OpenAppFilter.git package/luci-app-oaf
#
##iptv
#git clone https://github.com/riverscn/openwrt-iptvhelper.git package/iptvhelper
#
##dockerman
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman


#git clone https://github.com/kenzok8/small-package package/kenzok8
