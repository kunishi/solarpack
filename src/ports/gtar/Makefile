#
# $Id: Makefile,v 1.6 1999/06/05 05:40:14 kunishi Exp $
#

PKG=		GNUtar
NAME=		GNU tar utilities
VERSION=	1.12
VENDOR=		${VENDOR_GNU}

DISTNAME=	tar-${VERSION}
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_INSTALL_INFO=	yes

CORE_TOOLS=	yes

.include <port.mk>
