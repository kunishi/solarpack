#
# $Id: Makefile,v 1.7 2000/09/27 01:27:40 kunishi Exp $
#

.include <port.pre.mk>

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
