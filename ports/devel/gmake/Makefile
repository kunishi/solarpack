#
# $Id: Makefile,v 1.9 2000/01/19 01:17:23 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgmake
.else
PKG=		GNUmake
.endif
NAME=		GNU make utility
VERSION=	3.78.1
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
