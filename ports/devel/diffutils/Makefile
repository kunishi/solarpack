#
# $Id: Makefile,v 1.6 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	diffutils
VERSION=	2.7
PORTREV=	1

PKG=		GNUdiff
NAME=		GNU diffutils

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/diffutils/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/diffutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CLASS_INFO=	info/diff.info

.include <port.mk>
