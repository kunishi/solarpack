#
# $Id: Makefile,v 1.6 2000/09/27 01:27:41 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	fileutils
VERSION=	4.0
PORTREV=	1

PKG=		GNUfileut
NAME=		GNU fileutils

VENDOR=		${VENDOR_GNU}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/fileutils/ \
		ftp:/ftp.media.kyoto-u.ac.jp/pub/GNU/fileutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CLASS_INFO=	info/fileutils.info

.include <port.mk>
