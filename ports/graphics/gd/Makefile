#
# $Id: Makefile,v 1.3 2000/09/27 01:27:46 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gd
VERSION=	1.8.3
PORTREV=	1

PKG=		OPENgd
NAME=		A graphics library for fast PNG creation
VENDOR=		http://www.boutell.com/gd/

MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

LIB_DEPENDS=	OPENpng:${PORTSDIR}/graphics/png \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENft:${PORTSDIR}/print/freetype \
		OPENxpm:${PORTSDIR}/graphics/xpm

USE_XLIB=	yes
MAKE_ARGS+=	COMPILER="${CC}"

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/lib ${INSTPREFIX}/include

.include <port.mk>
