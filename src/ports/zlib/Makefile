#
# $Id: Makefile,v 1.2 1999/08/27 12:11:05 kunishi Exp $
#


PKG=		PKGBzlib
NAME=		pkgbuild core tools: zlib, A general purpose data compression library
VERSION=	1.1.3
VENDOR=		Jean-loup Gailly (jloup@gzip.org) and Mark Adler (madler@alumni.caltech.edu)

DISTNAME=	zlib-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/ImageMagick/delegates/ \
		ftp://ring.nacsis.ac.jp/pub/text/xemacs/aux/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--shared --prefix=${PREFIX}

CORE_TOOLS=	yes
PKG_WITHOUT_GZIP=	yes

.include <port.mk>
