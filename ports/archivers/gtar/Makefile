#
# $Id: Makefile,v 1.9 2000/05/02 04:58:58 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgtar
NAME=		pkgbuild core tools: GNU tar utilities
.else
PKG=		GNUtar
NAME=		GNU tar utilities
.endif
VERSION=	1.12
VENDOR=		${VENDOR_GNU}

DISTNAME=	tar-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-g${DISTNAME}
.else
PKGNAME=	g${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/tar.info

.include <port.mk>
