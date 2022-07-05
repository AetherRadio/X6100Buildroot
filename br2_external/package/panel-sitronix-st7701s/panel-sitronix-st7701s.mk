################################################################################
#
#  ST7701S LCD driver
#
################################################################################

PANEL_SITRONIX_ST7701S_VERSION = master
PANEL_SITRONIX_ST7701S_SOURCE = panel-jinglitai-jlt4013a-$(PANEL_SITRONIX_ST7701S_VERSION).tar.gz
PANEL_SITRONIX_ST7701S_SITE = https://github.com/ruilvo/panel-jinglitai-jlt4013a/archive
PANEL_SITRONIX_ST7701S_SITE_METHOD = wget
PANEL_SITRONIX_ST7701S_AUTORECONF = YES
PANEL_SITRONIX_ST7701S_LICENSE = GPLv2

$(eval $(kernel-module))
$(eval $(generic-package))
