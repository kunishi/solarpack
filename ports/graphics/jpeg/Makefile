#
# $Id: Makefile,v 1.1 1999/06/05 07:25:09 kunishi Exp $
#

PKG=		OPENjpeg
NAME=		The Independent JPEG Group's JPEG software
VERSION=	6b
VENDOR=		The Independent JPEG Group

DISTNAME=	jpegsrc.v6b
PKGNAME=	jpeg-${VERSION}
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

WRKSRC=		${WRKDIR}/${PKGNAME}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --enable-static

pre-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/include
	${MKDIR} ${WRK_BASEDIR}/lib
	${MKDIR} ${WRK_BASEDIR}/man/man1

.include <port.mk>
