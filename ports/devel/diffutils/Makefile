#
# $Id: Makefile,v 1.5 2000/01/18 11:55:28 kunishi Exp $
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

CLASS_INFO=	info/diff.info

.include <port.mk>
