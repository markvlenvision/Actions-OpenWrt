#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate


# Modify banner
#cat >package/base-files/files/etc/banner <<EOF
# ██████╗ ██████╗ ███████╗███╗   ██╗██╗    ██╗██████╗ ████████╗
#██╔═══██╗██╔══██╗██╔════╝████╗  ██║██║    ██║██╔══██╗╚══██╔══╝
#██║   ██║██████╔╝█████╗  ██╔██╗ ██║██║ █╗ ██║██████╔╝   ██║
#██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║██║███╗██║██╔══██╗   ██║
#╚██████╔╝██║     ███████╗██║ ╚████║╚███╔███╔╝██║  ██║   ██║
# ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝ ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝
# -----------------------------------------------------
# %D %V, %C
# -----------------------------------------------------
#EOF


# Modify app name
#sed -i 's/"IPSec VPN 服务器"/"IPSec VPN"/g' package/feeds/luci/luci-app-ipsec-server/po/*/ipsec-server.po # `grep "IPSec VPN 服务器" -rl ./`
#sed -i 's/"IPSec VPN 服务器"/"IPSec VPN"/g' package/feeds/luci/luci-app-ipsec-vpnd/po/*/ipsec.po          # `grep "IPSec VPN 服务器" -rl ./`


sed -i 's/"frp 客户端"/"Frp 客户端"/g' package/feeds/luci/luci-app-frpc/po/zh_Hans/frpc.po # `grep "Frp 内网穿透" -rl ./`
sed -i 's/"frp 服务器"/"Frp 服务端"/g' package/feeds/luci/luci-app-frps/po/zh_Hans/frps.po # `grep "Frps - 通用设置" -rl ./`






##修改默认主题
#sed -i "s/luci-theme-bootstrap/luci-theme-$OWRT_THEME/g" $(find ./feeds/luci/collections/ -type f -name "Makefile")

##修改默认主机名
#sed -i "s/hostname='.*'/hostname='$OWRT_NAME'/g" ./package/base-files/files/bin/config_generate

##修改默认时区
#sed -i "s/'UTC'/'CST-8'\n        set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate


##根据源码来修改
#if [[ $OWRT_URL == *"lede"* ]] ; then
#  #修改默认时间格式
#  sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S %A")/g' $(find ./package/*/autocore/files/ -type f -name "index.htm")
#fi
