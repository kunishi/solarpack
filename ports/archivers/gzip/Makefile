#
# $Id: Makefile,v 1.9 2000/04/26 08:32:45 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgzip
.else
PKG=		GNUgzip
.endif
NAME=		pkgbuild core tools: GNU compress utilities
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
