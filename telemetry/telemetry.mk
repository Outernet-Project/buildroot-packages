################################################################################
#
# telemetry
#
################################################################################

TELEMETRY_VERSION = v0.92
TELEMETRY_SITE = $(call github,Outernet-Project,telemetry_client,$(TELEMETRY_VERSION))
TELEMETRY_SETUP_TYPE = setuptools

define TELEMETRY_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(call epkgdir,telemetry)/S91telemetry \
		$(TARGET_DIR)/etc/init.d/S91telemetry
endef

$(eval $(python-package))
