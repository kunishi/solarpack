#
# $Id: Makefile,v 1.11 1999/09/02 04:54:14 kunishi Exp $
#

PKG=		GNUcc
NAME=		GNU compilers
VERSION=	2.95.1
VENDOR=		${VENDOR_GNU}

DISTNAME=	gcc-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_INSTALL_INFO=	yes
ALL_TARGET=	bootstrap

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
