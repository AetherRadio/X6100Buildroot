################################################################################
#
#  Aether-Radio's X6100 base control library
#
################################################################################

AETHER_X6100_CONTROL_VERSION = f09dd3119da3e2e1f3c1d0d80630659fc5696069
AETHER_X6100_CONTROL_SOURCE = $(AETHER_X6100_CONTROL_VERSION).tar.gz
AETHER_X6100_CONTROL_SITE = https://github.com/AetherRadio/X6100Control/archive
AETHER_X6100_CONTROL_LICENSE = GPLv2

$(eval $(cmake-package))
