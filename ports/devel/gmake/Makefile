#
# $Id: Makefile,v 1.13 2000/05/17 03:26:43 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		SOAPgmake
NAME=		Solaris Application Packaging tools: GNU make utility
.else
PKG=		GNUmake
NAME=		GNU make utility
.endif
VERSION=	3.79
VENDOR=		${VENDOR_GNU}

PORTNAME=	gmake
DISTNAME=	make-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/make.info

.include <port.mk>
