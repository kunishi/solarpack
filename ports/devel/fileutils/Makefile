#
# $Id: Makefile,v 1.4 2000/01/18 11:56:12 kunishi Exp $
#

PKG=		GNUfileut
NAME=		GNU fileutils
VERSION=	4.0
VENDOR=		${VENDOR_GNU}

DISTNAME =	fileutils-${VERSION}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/fileutils/ \
		ftp:/ftp.media.kyoto-u.ac.jp/pub/GNU/fileutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CLASS_INFO=	info/fileutils.info

.include <port.mk>
