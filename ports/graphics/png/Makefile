#
# $Id: Makefile,v 1.5 2000/09/27 01:27:50 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	png
VERSION=	1.0.8
PORTREV=	1

PKG=		OPENpng
NAME=		PNG handling library

VENDOR=		G. R.-Pehrson, A. E. Dilger, and G. E. Schalnat <png-group@w3.org>
DISTNAME=	libpng-${VERSION}
MASTER_SITES=	ftp://ftp.libpng.org/pub/png/src/

PATCH_SITES=	ftp://ftp.libpng.org/pub/png/src/
#PATCHFILES=	libpng-1.0.6-patch-a.txt.gz \
#		libpng-1.0.6-patch-b.txt.gz \
#		libpng-1.0.6-patch-c.txt.gz

post-extract:
	cd ${WRKSRC} && ${CP} scripts/makefile.solaris Makefile

test:
	cd ${WRKSRC} && ${CCSMAKE} test

.include <port.mk>
