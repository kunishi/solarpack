#
# $Id: Makefile,v 1.9 2003/02/26 11:00:26 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	zlib
VERSION=	1.1.4
PORTREV=	1

PKG=		OPUCzlib
NAME=		zlib, A general purpose data compression library

VENDOR=		Jean-loup Gailly (jloup@gzip.org) and Mark Adler (madler@alumni.caltech.edu)
MASTER_SITES=	http://prdownloads.sourceforge.net/libpng/

.if ${OSREL} <= 5.7
BUILD_DEPENDS=	GNUcc27:${PORTSDIR}/devel/gcc27
.endif

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--shared --prefix=${PREFIX}
PKG_WITHOUT_GZIP=	yes
.if ${OSREL} <= 5.7
MAKE_ARGS+=	CC=${PREFIX}/bin/gcc27
.endif

.if ${OSREL} <= 5.7
ZLIB_CONFIGURE_ENV=	CC=${PREFIX}/bin/gcc27
.endif

do-configure:
	@cd ${WRKSRC} && ${ENV} ${ZLIB_CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}

.include <port.mk>
