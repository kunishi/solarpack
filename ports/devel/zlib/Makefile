#
# $Id: Makefile,v 1.3 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	zlib
VERSION=	1.1.3
PORTREV=	1

PKG=		OPENzlib
NAME=		zlib, A general purpose data compression library

VENDOR=		Jean-loup Gailly (jloup@gzip.org) and Mark Adler (madler@alumni.caltech.edu)
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/ImageMagick/delegates/ \
		ftp://ring.nacsis.ac.jp/pub/text/xemacs/aux/

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--shared --prefix=${PREFIX}

PKG_WITHOUT_GZIP=	yes

.include <port.mk>
