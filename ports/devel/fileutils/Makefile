#
# $Id: Makefile,v 1.3 1999/06/05 04:43:56 kunishi Exp $
#

PKG=		GNUfileut
NAME=		GNU fileutils
VERSION=	4.0
VENDOR=		${VENDOR_GNU}

DISTNAME =	fileutils-${VERSION}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/fileutils/ \
		ftp:/ftp.media.kyoto-u.ac.jp/pub/GNU/fileutils/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS +=	--program-prefix=g
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

.include <port.mk>
