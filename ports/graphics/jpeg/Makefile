#
# $Id: Makefile,v 1.7 2001/11/19 09:42:35 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	jpeg
VERSION=	6b
PORTREV=	2

PKG=		OPUCjpeg
NAME=		The Independent JPEG Group's JPEG software

VENDOR=		The Independent JPEG Group
MASTER_SITES=	ftp://ftp.uu.net/graphics/jpeg/ \
		ftp://ftp.imagemagick.org/pub/ImageMagick/delegates/
DISTNAME=	jpegsrc.v6b
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ljpeg-${VERSION}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

WRKSRC=		${WRKDIR}/${PORTNAME}-${VERSION}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --enable-static

post-extract:
	cd ${WRKSRC}; \
	  ${EXTRACT_CMD} ${DISTDIR}/ljpeg-${VERSION}${EXTRACT_SUFX} | ${TAR} xf -

post-patch:
	cd ${WRKSRC}; ${PATCH} -p1 -N < ${WRKSRC}/ljpeg-${VERSION}.patch

pre-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${MKDIR} ${INSTPREFIX}/include
	@${MKDIR} ${INSTPREFIX}/lib
	@${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>
