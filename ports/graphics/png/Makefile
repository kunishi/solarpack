#
# $Id: Makefile,v 1.6 2001/03/23 07:02:43 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	png
VERSION=	1.0.9
PORTREV=	1

PKG=		OPENpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	ftp://ftp.libpng.org/pub/png/src/

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.solaris Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
