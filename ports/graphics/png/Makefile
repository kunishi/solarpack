#
# $Id: Makefile,v 1.3 2000/05/17 12:27:24 kunishi Exp $
#

PORTNAME=	png
VERSION=	1.0.6
PORTREV=	1

PKG=		OPENpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	ftp://ftp.libpng.org/pub/png/src/

PATCH_SITES=	ftp://ftp.libpng.org/pub/png/src/
PATCHFILES=	libpng-1.0.6-patch-a.txt.gz \
		libpng-1.0.6-patch-b.txt.gz \
		libpng-1.0.6-patch-c.txt.gz

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.solaris Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
