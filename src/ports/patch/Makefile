#
# $Id: Makefile,v 1.8 2000/01/06 04:59:37 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBpatch
.else
PKG=		GNUpatch
.endif
NAME=		pkgbuild core tools: patch
VERSION=	2.5
VENDOR=		${VENDOR_GNU}

DISTNAME=	patch-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/text/xemacs/beta/contrib/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>
