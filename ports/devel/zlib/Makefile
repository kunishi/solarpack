#
# $Id: Makefile,v 1.5 2000/06/14 07:35:15 kunishi Exp $
#

PORTNAME=	zlib
VERSION=	1.1.3
PORTREV=	1

PKG=		OPENzlib
NAME=		zlib, A general purpose data compression library

VENDOR=		Jean-loup Gailly (jloup@gzip.org) and Mark Adler (madler@alumni.caltech.edu)
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/graphics/ImageMagick/delegates/ \
		ftp://ring.nacsis.ac.jp/pub/text/xemacs/aux/

BUILD_DEPENDS=	GNUcc27:${PORTSDIR}/devel/gcc27

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--shared --prefix=${PREFIX}
PKG_WITHOUT_GZIP=	yes
MAKE_ARGS+=	CC=${PREFIX}/bin/gcc27

ZLIB_CONFIGURE_ENV=	CC=${PREFIX}/bin/gcc27

do-configure:
	@cd ${WRKSRC} && ${ENV} ${ZLIB_CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

.include <port.mk>
