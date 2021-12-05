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

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
 
sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default

# git clone https://github.com/kuoruan/openwrt-v2ray.git package/v2ray-core
# git clone -b luci2 https://github.com/kuoruan/luci-app-v2ray.git package/luci-app-v2ray
git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
git clone https://github.com/pymumu/smartdns.git package/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# git clone https://github.com/vernesong/OpenClash.git
# mv ./OpenClash/luci-app-openclash ./package/
# rm -rf OpenClash

#自定义主题argon
cd lede/package/lean  
rm -rf luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  
make menuconfig #choose LUCI->Theme->Luci-theme-argon  
make -j1 V=s  
cd ../../..
