#
# $Id: Makefile,v 1.9 2003/01/07 04:08:10 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	png
VERSION=	1.2.5
PORTREV=	1

PKG=		OPUCpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	http://www.libpng.org/pub/png/src/
USE_ZLIB=	yes
.if exists(/usr/lib/libz.so)
MAKE_ENV+=	ZLIBPREFIX=/usr
.else
MAKE_ENV+=	ZLIBPREFIX=${LOCALBASE}
.endif

do-configure:
	cd ${WRKSRC} && ${CP} scripts/makefile.solaris Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
