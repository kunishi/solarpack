#
# $Id: Makefile,v 1.8 2002/03/18 09:28:40 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	png
VERSION=	1.2.1
PORTREV=	1

PKG=		OPUCpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	http://www.libpng.org/pub/png/src/

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.solaris Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
