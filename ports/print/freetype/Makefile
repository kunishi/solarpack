#
# $Id: Makefile,v 1.3 2000/01/19 10:38:31 kunishi Exp $
#

PKG=		OPENft
NAME=		Freetype, the Free TrueType Font Engine
VERSION=	1.3
VENDOR=		Robert Wilhelm and Werner Lemberg <http://www.freetype.org/>

DISTNAME=	freetype-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/freetype/ \
		ftp://ftp.tux.org/pub/devel/freetype/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--disable-nls --enable-static --enable-shared

.include <port.mk>
