#
# $Id: Makefile,v 1.7 1999/08/27 12:11:00 kunishi Exp $
#

PKG=		PKGBpatch
NAME=		pkgbuild core tools: patch
VERSION=	2.1b
VENDOR=		${VENDOR_GNU}

DISTNAME=	patch-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/text/xemacs/beta/contrib/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CORE_TOOLS=	yes

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1

.include <port.mk>
