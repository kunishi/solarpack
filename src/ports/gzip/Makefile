#
# $Id: Makefile,v 1.8 2000/01/06 04:59:37 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgzip
.else
PKG=		GNUgzip
.endif
NAME=		pkgbuild core tools: GNU compress utilities
VERSION=	1.2.4
VENDOR=		${VENDOR_GNU}

DISTNAME=	gzip-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gzip/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gzip/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

PKG_WITHOUT_GZIP=	yes

.include <port.mk>
