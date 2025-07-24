include $(TOPDIR)/rules.mk

PKG_NAME:=ffda-outdoor-mesh
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=David Bauer <mail@david-bauer.net>
PKG_LICENSE:=GPL-2.0-or-later

include $(TOPDIR)/../package/gluon.mk

define Package/ffda-outdoor-mesh
  TITLE:=FFDA Outdoor Mesh Integration
  DEPENDS:=+gluon-core +wpa-supplicant-mbedtls
endef

define Package/ffda-outdoor-mesh/description
  Gluon integration for the FFDA Outdoor Mesh.
endef

$(eval $(call BuildPackageGluon,ffda-outdoor-mesh))
