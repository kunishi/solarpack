#
# $Id: Makefile,v 1.7 2000/01/06 11:14:36 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBgtar
.else
PKG=		GNUtar
.endif
NAME=		pkgbuild core tools: GNU tar utilities
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
USE_INSTALL_INFO=	yes

.include <port.mk>
