#
# $Id: Makefile,v 1.11 2000/05/15 09:17:35 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgmake
NAME=		pkgbuild core tools: GNU make utility
.else
PKG=		GNUmake
NAME=		GNU make utility
.endif
VERSION=	3.79
VENDOR=		${VENDOR_GNU}

DISTNAME=	make-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-g${DISTNAME}
.else
PKGNAME=	g${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/make.info

.include <port.mk>
