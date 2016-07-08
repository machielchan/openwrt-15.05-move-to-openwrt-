#
# Copyright (C) 2015 OpenWrt-dist
# Copyright (C) 2016 Chen RuiWei <crwbak@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptun
PKG_VERSION:=1.0
PKG_RELEASE=20160701

PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Chen RuiWei <crwbak@gmail.com>

PKG_BUILD_DIR:=$(BUILD_DIR)/kcptun-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/kcptun
	SECTION:=net
	CATEGORY:=Extra packages
	TITLE:=an extremely simple and fast udp tunnel based on kcp protocol
	URL:=https://github.com/xtaci/kcptun
	DEPENDS:=
	VARIANT:=
endef

define Build/Prepare
	$(CP) ./files/Makefile $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/kcptun/install
	$(INSTALL_DIR) $(1)/usr/bin
ifeq ($(ARCH),arm)
	$(INSTALL_BIN) ./files/arm/kcptun $(1)/usr/bin
endif
ifeq ($(ARCH),aarch64)
	$(INSTALL_BIN) ./files/armv7/kcptun $(1)/usr/bin
endif
ifeq ($(ARCH),mips)
	$(INSTALL_BIN) ./files/ar71xx/kcptun $(1)/usr/bin
endif
ifeq ($(ARCH),mipsel)
	$(INSTALL_BIN) ./files/7620n/kcptun $(1)/usr/bin
endif
ifeq ($(ARCH),i386)
	$(INSTALL_BIN) ./files/x86/kcptun $(1)/usr/bin
endif
ifeq ($(ARCH),x86_64)
	$(INSTALL_BIN) ./files/x86_64/kcptun $(1)/usr/bin
endif

endef

$(eval $(call BuildPackage,kcptun))
