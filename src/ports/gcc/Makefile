#
# $Id: Makefile,v 1.11 2000/01/06 04:59:37 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgcc
.else
PKG=		GNUcc
.endif
NAME=		GNU compilers
VERSION=	2.95.2
VENDOR=		${VENDOR_GNU}

DISTNAME=	gcc-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
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
