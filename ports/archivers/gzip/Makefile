#
# $Id: Makefile,v 1.13 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	gzip
VERSION=	1.2.4a
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgzip
NAME=		Solaris Application Packaging tools: GNU compress utilities
.else
PKG=		GNUgzip
NAME=		GNU compress utilities
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gzip/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gzip/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/gzip.info

PKG_WITHOUT_GZIP=	yes

.include <port.mk>
