include $(TOPDIR)/rules.mk

PKG_NAME:=ffda-usb-wan-hotplug
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=David Bauer <mail@david-bauer.net>
PKG_LICENSE:=GPL-2.0-or-later

include $(TOPDIR)/../package/gluon.mk

define Package/ffda-usb-wan-hotplug
  TITLE:=Automatically adds USB ethernet devices to the WAN bridge
  DEPENDS:=+gluon-core +luaposix +libubus-lua +kmod-usb-net-rndis +kmod-usb-net-ipheth +usbmuxd
endef

define Package/ffda-usb-wan-hotplug/description
  Automatically adds USB ethernet devices to the WAN bridge.
endef

$(eval $(call BuildPackageGluon,ffda-usb-wan-hotplug))
