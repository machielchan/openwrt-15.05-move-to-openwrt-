#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/FIR300M
 NAME:=FIR300M
 PACKAGES:=
endef

define Profile/FIR300M/Description
 Support for FIR300M routers
endef
$(eval $(call Profile,FIR300M))
