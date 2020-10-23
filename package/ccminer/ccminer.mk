CCMINER_VERSION = ARM
CCMINER_SITE = https://github.com/monkins1010/ccminer.git
CCMINER_SITE_METHOD = git
CCMINER_INSTALL_STAGING = YES
CCMINER_INSTALL_TARGET = YES
CCMINER_AUTORECONF = YES
CCMINER_CONF_OPTS = --disable-shared
CCMINER_DEPENDENCIES = openssl
CCMINER_POST_EXTRACT_HOOKS = "./autoconf.sh"


$(eval $(autotools-package))
