#
# $Id: Makefile,v 1.10 2000/05/02 04:59:06 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgzip
NAME=		pkgbuild core tools: GNU compress utilities
.else
PKG=		GNUgzip
NAME=		GNU compress utilities
.endif
VERSION=	1.2.4a
VENDOR=		${VENDOR_GNU}

DISTNAME=	gzip-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gzip/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gzip/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/gzip.info

PKG_WITHOUT_GZIP=	yes

.include <port.mk>
