################################################################################
#
# 8080
#
################################################################################

CPUFREQ_VERSION = 1.0
CPUFREQ_SITE = $(CPUFREQ_PKGDIR)src
CPUFREQ_SITE_METHOD = local

define CPUFREQ_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define CPUFREQ_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/CPUFREQ $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
