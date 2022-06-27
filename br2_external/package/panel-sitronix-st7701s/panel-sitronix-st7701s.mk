################################################################################
#
#  ST7701S LCD driver
#
################################################################################

ST7701S_SITE = https://github.com/ruilvo/panel-jinglitai-jlt4013a.git
ST7701S_VERSION = origin/master
ST7701S_SITE_METHOD = git
ST7701S_AUTORECONF = YES

$(eval $(kernel-module))
$(eval $(generic-package))
