include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_gmake.mk

DISTNAME=	gcc-2.8.1
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/
CONFIGURE_ARGS+=	--build=${GNU_HOSTTYPE}

CORE_TOOLS=	yes

do-build::
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} LANGUAGES=c
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} stage1
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} CC="stage1/xgcc -Bstage1/" CFLAGS="-g -O2"
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} stage2
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} CC="stage2/xgcc -Bstage2/" CFLAGS="-g -O2"
	-cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} compare

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
