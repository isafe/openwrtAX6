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

###################################################################################################################################
# Banner
# date=`date +%d.%m.%Y-%H:%M`
# sed -i 's/OpenWrt/OpenWrt Build '$date' By Andrii Marchuk/g' package/lean/default-settings/files/zzz-default-settings
# sed -i 's/%D %V, %C/%D %V, '$date' By Andrii Marchuk/g' package/base-files/files/etc/banner

# Modify default IP
# sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
# sed -i 's/255.255.255.0/255.255.254.0/g' package/base-files/files/bin/config_generate

# # Modify default HostName
# sed -i 's/OpenWrt/ax6/g' package/base-files/files/bin/config_generate

# 修改连接数数
#sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

#Change the number of connections
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=65535' package/base-files/files/etc/sysctl.conf
# sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate


# Modify the version number
#sed -i "s/OpenWrt /MuaChow build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
# Set default language
# sed -i "s/zh_cn/en/g" package/lean/default-settings/files/zzz-default-settings
# sed -i "s/zh_cn/en/g" luci/modules/luci-base/root/etc/uci-defaults/luci-base
# sed -i "s/+@LUCI_LANG_zh-cn/+@LUCI_LANG_en/g" package/lean/default-settings/Makefile
# sed -i "/po2lmo .\/po\/zh-cn\/default.po/d" package/lean/default-settings/Makefile

# Set Theme bootstrap
# sed -i "/uci commit luci/i uci set luci.main.mediaurlbase='/luci-static/bootstrap'" package/lean/default-settings/files/zzz-default-settings

# Set Timezone
#sed -i "s@CST-8@'CET-1CEST,M3.5.0,M10.5.0/3'@g" package/lean/default-settings/files/zzz-default-settings
#sed -i "s@Asia/Shanghai@'Europe/Warsaw'@g" package/lean/default-settings/files/zzz-default-settings
# sed -i "/uci commit system/i uci set system.ntp.server=''" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit system/i uci add_list system.ntp.server=0.cn.pool.ntp.org" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit system/i uci add_list system.ntp.server=1.cn.pool.ntp.org" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit system/i uci add_list system.ntp.server=2.cn.pool.ntp.org" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit system/i uci add_list system.ntp.server=3.cn.pool.ntp.org" package/lean/default-settings/files/zzz-default-settings

#sed -i "/uci commit system/a uci commit ntpclient" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit ntpclient/i uci set ntpclient.@ntpserver[3].hostname='3.cn.pool.ntp.org'" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit ntpclient/i uci set ntpclient.@ntpserver[2].hostname='2.cn.pool.ntp.org'" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit ntpclient/i uci set ntpclient.@ntpserver[1].hostname='1.cn.pool.ntp.org'" package/lean/default-settings/files/zzz-default-settings
#sed -i "/uci commit ntpclient/i uci set ntpclient.@ntpserver[0].hostname='0.cn.pool.ntp.org'" package/lean/default-settings/files/zzz-default-settings


# Add normal repos
#sed -i "/\/etc\/opkg\/distfeeds.conf/d" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"#src\/gz openwrt_core https:\/\/mirrors.cloud.tencent.com\/lede\/snapshots\/targets\/ipq807x\/generic\/packages\" >> \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"src\/gz openwrt_telephony https:\/\/downloads.openwrt.org\/releases\/packages-21.02\/aarch64_cortex-a53\/telephony\" >> \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"src\/gz openwrt_routing https:\/\/downloads.openwrt.org\/releases\/packages-21.02\/aarch64_cortex-a53\/routing\" >> \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"src\/gz openwrt_packages https:\/\/downloads.openwrt.org\/releases\/packages-21.02\/aarch64_cortex-a53\/packages\" >> \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"src\/gz openwrt_luci https:\/\/downloads.openwrt.org\/releases\/packages-21.02\/aarch64_cortex-a53\/luci\" >> \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"src\/gz openwrt_base https:\/\/downloads.openwrt.org\/releases\/packages-21.02\/aarch64_cortex-a53\/base\" > \/etc\/opkg\/distfeeds.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"arch aarch64_cortex-a53 20\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"arch aarch64_cortex-a53_neon-vfpv4 10\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"arch noarch 1\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"arch all 1\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"#option check_signature 1\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"option overlay_root \/overlay\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"lists_dir ext \/var\/opkg-lists\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"dest ram \/tmp\" >> \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings
#sed -i "/\/etc\/shadow/a echo \"dest root \/\" > \/etc\/opkg.conf" package/lean/default-settings/files/zzz-default-settings

# create /opt
# sed -i "/\/usr\/bin\/ip/a mkdir \/opt" package/lean/default-settings/files/zzz-default-settings

# luci
#sed -i '/mwan.htm/s/^#\?/#/' package/lean/default-settings/files/zzz-default-settings

# Remove buildin packets
# rm -rf package/lean/luci-app-zerotier
# rm -rf package/lean/luci-app-haproxy-tcp
# rm -rf lede/package/lean/luci-app-turboacc
# rm -rf lede/package/lean/luci-app-wrtbwmon
# rm -rf lede/package/lean/dns2socks
# rm -rf lede/package/lean/simple-obfs

###################################################################################################################################

# themes添加（svn co 命令意思：指定版本如https://github）
git clone https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/luci-theme-atmaterial
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd


#添加额外非必须软件包
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/kongfl888/luci-app-autorewan.git  package/luci-app-autorewan
# git clone https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
#git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
# me #git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
#VSSR
# me #git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
# me #git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr

# me #git clone https://github.com/riverscn/openwrt-iptvhelper.git package/openwrt-iptvhelper
#添加smartdns
# me #git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
# me #git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
#git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng
