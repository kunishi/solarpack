#
# $Id: Makefile,v 1.4 1999/06/05 04:40:23 kunishi Exp $
#

PKG=		GNUdiff
NAME=		GNU diffutils
VERSION=	2.7
VENDOR=		${VENDOR_GNU}

DISTNAME=	diffutils-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/diffutils/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/diffutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

.include <port.mk>
