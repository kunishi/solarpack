#
# $Id: Makefile,v 1.12 1999/11/02 02:56:57 kunishi Exp $
#

PKG=		GNUcc
NAME=		GNU compilers
VERSION=	2.95.2
VENDOR=		${VENDOR_GNU}

DISTNAME=	gcc-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_INSTALL_INFO=	yes
ALL_TARGET=	bootstrap
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
