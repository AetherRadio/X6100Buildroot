################################################################################
#
#  Driver for the Jinglitai JLT4013A LCD Panel.
#
################################################################################

PANEL_JINGLITAI_JLT4013A_VERSION = v3.0.0
PANEL_JINGLITAI_JLT4013A_SOURCE = $(PANEL_JINGLITAI_JLT4013A_VERSION).tar.gz
PANEL_JINGLITAI_JLT4013A_SITE = https://github.com/ruilvo/panel-jinglitai-jlt4013a/archive
PANEL_JINGLITAI_JLT4013A_AUTORECONF = YES
PANEL_JINGLITAI_JLT4013A_LICENSE = GPLv2

$(eval $(kernel-module))
$(eval $(generic-package))
