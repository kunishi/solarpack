#
# $Id: Makefile,v 1.19 2000/05/30 05:44:00 kunishi Exp $
#

OSREL!=		/usr/bin/uname -r

PORTNAME=	gcc
VERSION=	2.95.2
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgcc
NAME=		Solaris Application Packaging tools: GNU compiler collection
.else
PKG=		GNUcc
NAME=		GNU compiler collection
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
.if (${OSREL} == "5.6")
CONFIGURE_ENV+=	CFLAGS='-g -O0'
.endif
ALL_TARGET=	bootstrap
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

CLASS_INFO=	info/chill.info info/cpp.info info/g77.info info/gcc.info

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
