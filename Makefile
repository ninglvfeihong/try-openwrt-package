include $(TOPDIR)/rules.mk

PKG_NAME:=SHS
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:Xiao WANG <ninglvfeihong@163.com>

include $(INCLUDE_DIR)/package.mk

define Package/SHS
  SECTION:=base
  CATEGORY:=Utilities
  DEPENDS:=+boost-regex +libcrypto +libpthread +libopenssl +libstdcpp +librt
  TITLE:=Smart Hotel System
endef

define Package/SHS/description
  Smart Hotel System. Smart system for smart people.
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/SHS/install
	$(INSTALL_DIR) $(1)/usr/SHS/bin
	$(INSTALL_BIN) ./files/usr/SHS/bin/SHS_cpp $(1)/usr/SHS/bin/
endef

$(eval $(call BuildPackage,SHS))
