################################################################################
#
#  ST7701S LCD driver
#
################################################################################

PANEL_SITRONIX_ST7701S_SITE = https://github.com/ruilvo/panel-jinglitai-jlt4013a.git
PANEL_SITRONIX_ST7701S_VERSION = origin/master
PANEL_SITRONIX_ST7701S_SITE_METHOD = git
PANEL_SITRONIX_ST7701S_AUTORECONF = YES

$(eval $(kernel-module))
$(eval $(generic-package))
