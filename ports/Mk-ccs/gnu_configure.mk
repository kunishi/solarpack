include ${PKGBUILD_MAKEFILE_DIR}/has_configure.mk

CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=	prefix=${PREFIX}
MAKE_INSTALL_ARGS +=	prefix=${WRK_BASEDIR}
