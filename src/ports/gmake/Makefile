#
# $Id: Makefile,v 1.7 1999/08/27 12:10:47 kunishi Exp $
#

PKG=		PKGBgmake
NAME=		pkgbuild core tools: GNU make utility
VERSION=	3.76.1
VENDOR=		${VENDOR_GNU}

DISTNAME=	make-${VERSION}
PKGNAME=	core-g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
#CONFIGURE_ARGS+=	--program-prefix=g
USE_INSTALL_INFO=	yes

CORE_TOOLS=	yes

post-install:
	${MV} ${INSTPREFIX}/bin/make ${INSTPREFIX}/bin/gmake

.include <port.mk>
