#
# $Id: Makefile,v 1.1 1999/06/08 05:13:20 kunishi Exp $
#

PKG=		OPENpng
NAME=		PNG handling library
VERSION=	1.0.3
VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>

DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
MASTER_SITES=	ftp://ftp.uu.net/graphics/png/src/

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.s2x Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
