#
# $Id: Makefile,v 1.6 2000/09/27 01:27:54 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	freetype
VERSION=	1.3.1
PORTREV=	1

PKG=		OPENft
NAME=		Freetype, the Free TrueType Font Engine

VENDOR=		Robert Wilhelm and Werner Lemberg <http://www.freetype.org/>
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/freetype/ \
		ftp://ftp.tux.org/pub/devel/freetype/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--disable-nls --enable-static --enable-shared

.include <port.mk>
