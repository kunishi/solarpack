#
# $Id: Makefile,v 1.10 2000/05/16 07:17:29 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBpatch
NAME=		pkgbuild core tools: patch
.else
PKG=		GNUpatch
NAME=		GNU patch
.endif
VERSION=	2.5.4
VENDOR=		${VENDOR_GNU}

PORTNAME=	patch
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/patch/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
