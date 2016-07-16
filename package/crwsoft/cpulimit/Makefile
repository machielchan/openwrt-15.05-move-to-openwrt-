#
# Copyright (C) 2015 OpenWrt-dist
# Copyright (C) 2016 Chen RuiWei <crwbak@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cpulimit
PKG_VERSION:=0.2
PKG_RELEASE=20160628

PKG_SOURCE_URL:=https://github.com/opsengine/cpulimit/archive/
PKG_SOURCE:=v$(PKG_VERSION).tar.gz
PKG_MD5SUM:=ac86cd54173251223fb89b14a73ae37c

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Chen RuiWei <crwbak@gmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/cpulimit-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/cpulimit
	SECTION:=net
	CATEGORY:=Extra packages
	TITLE:=CPU usage limiter for Linux
	URL:=https://github.com/opsengine/cpulimit
	DEPENDS:=
endef

define Build/Compile
	cd $(PKG_BUILD_DIR)/src && $(MAKE) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)"
endef

define Package/cpulimit/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/cpulimit $(1)/usr/bin/
endef

$(eval $(call BuildPackage,cpulimit))
