################################################################################
#
# python-librarian-settings
#
################################################################################

PYTHON_LIBRARIAN_SETTINGS_VERSION = f7e972da1a00fd9c59b03e8c4ea598a2ac1d0ba8
PYTHON_LIBRARIAN_SETTINGS_SITE = $(call github,Outernet-Project,librarian-settings,$(PYTHON_LIBRARIAN_SETTINGS_VERSION))
PYTHON_LIBRARIAN_SETTINGS_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SETTINGS_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SETTINGS_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_SETTINGS),y)
LIBRARIAN_COMPONENTS += librarian_settings
endif

$(eval $(python-package))
