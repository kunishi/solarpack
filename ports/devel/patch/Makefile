#
# $Id: Makefile,v 1.8 2000/01/06 11:29:42 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBpatch
NAME=		pkgbuild core tools: patch
.else
PKG=		GNUpatch
NAME=		GNU patch
.endif
VERSION=	2.5
VENDOR=		${VENDOR_GNU}

DISTNAME=	patch-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/patch/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
