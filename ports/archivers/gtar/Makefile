#
# $Id: Makefile,v 1.11 2000/05/16 07:17:29 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgtar
NAME=		pkgbuild core tools: GNU tar utilities
.else
PKG=		GNUtar
NAME=		GNU tar utilities
.endif
VERSION=	1.13
VENDOR=		${VENDOR_GNU}

PORTNAME=	gtar
DISTNAME=	tar-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/tar.info

.include <port.mk>
