#
# $Id: Makefile,v 1.17 2000/05/17 03:26:43 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		SOAPgcc
NAME=		Solaris Application Packaging tools: GNU compiler collection
.else
PKG=		GNUcc
NAME=		GNU compiler collection
.endif
VERSION=	2.95.2
VENDOR=		${VENDOR_GNU}

PORTNAME=	gcc
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
ALL_TARGET=	bootstrap
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

CLASS_INFO=	info/chill.info info/cpp.info info/g77.info info/gcc.info

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
