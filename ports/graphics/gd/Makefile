#
# $Id: Makefile,v 1.4 2001/11/12 08:32:38 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gd
VERSION=	2.0.1
PORTREV=	1

PKG=		OPUCgd
NAME=		A graphics library for fast PNG creation
VENDOR=		http://www.boutell.com/gd/

MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

LIB_DEPENDS=	OPUCpng:${PORTSDIR}/graphics/png \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPUCfrty2:${PORTSDIR}/print/freetype2 \
		OPENxpm:${PORTSDIR}/graphics/xpm

USE_XLIB=	yes
USE_ZLIB=	yes
MAKE_ARGS+=	COMPILER="${CC}"

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/lib ${INSTPREFIX}/include

.include <port.mk>
