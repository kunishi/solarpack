#
# $Id: Makefile,v 1.9 2000/01/06 04:59:37 kunishi Exp $
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
USE_INSTALL_INFO=	yes

.include <port.mk>
