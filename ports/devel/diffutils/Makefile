include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_gmake.mk

DISTNAME =	diffutils-2.7
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/diffutils/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/diffutils/
CONFIGURE_ARGS +=	--program-prefix=g

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
