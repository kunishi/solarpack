#
# $Id: Makefile,v 1.2 1999/06/06 06:37:55 kunishi Exp $
#

PKG=		OPENft
NAME=		Freetype, the Free TrueType Font Engine
VERSION=	1.2
VENDOR=		Robert Wilhelm and Werner Lemberg <http://www.freetype.org/>

DISTNAME=	freetype-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/freetype/ \
		ftp://ftp.tux.org/pub/devel/freetype/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-static --enable-shared

.include <port.mk>
