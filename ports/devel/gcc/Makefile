include pre.mk

DISTNAME=	gcc-2.8.1
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--build=${GNU_HOSTTYPE}
USE_GMAKE=	yes

DO_BUILD_OVERRIDE=	yes

do-build:
	-cd ${WRKSRC} && ${MAKE} LANGUAGES=c
	-cd ${WRKSRC} && ${MAKE} stage1
	-cd ${WRKSRC} && ${MAKE} CC="stage1/xgcc -Bstage1/" CFLAGS="-g -O2"
	-cd ${WRKSRC} && ${MAKE} stage2
	-cd ${WRKSRC} && ${MAKE} CC="stage2/xgcc -Bstage2/" CFLAGS="-g -O2"
	cd ${WRKSRC} && ${MAKE} compare

include pkgbuild.mk