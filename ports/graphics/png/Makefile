#
# $Id: Makefile,v 1.2 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	png
VERSION=	1.0.3
PORTREV=	1

PKG=		OPENpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	ftp://ftp.uu.net/graphics/png/src/

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.s2x Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
