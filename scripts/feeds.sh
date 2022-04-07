#!/bin/bash
#========================================================================================================================
# Description: Automatically Build ImmortalWrt for Amlogic
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt.git / Branch: 21.02
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}
sed -i '1i\src-git oui https://github.com/zhaojh329/oui.git' feeds.conf.default
./scripts/feeds update oui
./scripts/feeds uninstall -a
./scripts/feeds install -a
