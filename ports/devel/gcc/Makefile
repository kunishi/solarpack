#
# $Id: Makefile,v 1.9 1999/08/27 03:49:39 kunishi Exp $
#

PKG=		GNUcc
NAME=		GNU compilers
VERSION=	2.95.1
VENDOR=		${VENDOR_GNU}

DISTNAME=	gcc-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/

CORE_TOOLS=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
#CONFIGURE_ARGS+=	--build=${GNU_HOSTTYPE}
USE_INSTALL_INFO=	yes
ALL_TARGET=	bootstrap

#do-build:
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} LANGUAGES=c
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} stage1
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} CC="stage1/xgcc -Bstage1/" CFLAGS="-g -O2"
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} stage2
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} CC="stage2/xgcc -Bstage2/" CFLAGS="-g -O2"
#	-cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} compare

.include <port.mk>
