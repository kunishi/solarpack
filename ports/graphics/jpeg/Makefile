#
# $Id: Makefile,v 1.5 2000/06/07 05:47:06 kunishi Exp $
#

PORTNAME=	jpeg
VERSION=	6b
PORTREV=	1

PKG=		OPENjpeg
NAME=		The Independent JPEG Group's JPEG software

VENDOR=		The Independent JPEG Group
DISTNAME=	jpegsrc.v6b
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/

WRKSRC=		${WRKDIR}/${PORTNAME}-${VERSION}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --enable-static

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${MKDIR} ${INSTPREFIX}/include
	@${MKDIR} ${INSTPREFIX}/lib
	@${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>
