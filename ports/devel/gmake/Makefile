#
# $Id: Makefile,v 1.6 1999/06/05 05:34:31 kunishi Exp $
#

PKG=		GNUmake
NAME=		GNU make utility
VERSION=	3.77
VENDOR=		${VENDOR_GNU}

DISTNAME=	make-${VERSION}
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_INSTALL_INFO=	yes

CORE_TOOLS=	yes

.include <port.mk>
