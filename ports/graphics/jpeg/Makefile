#
# $Id: Makefile,v 1.3 1999/06/09 02:34:17 kunishi Exp $
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
	@${MKDIR} ${INSTPREFIX}/bin
	@${MKDIR} ${INSTPREFIX}/include
	@${MKDIR} ${INSTPREFIX}/lib
	@${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>
