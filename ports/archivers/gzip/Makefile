#
# $Id: Makefile,v 1.11 2000/05/16 07:17:29 kunishi Exp $
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

PORTNAME=	gzip
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gzip/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gzip/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/gzip.info

PKG_WITHOUT_GZIP=	yes

.include <port.mk>
