#
# $Id: Makefile,v 1.7 1999/08/27 12:10:51 kunishi Exp $
#

PKG=		PKGBgtar
NAME=		pkgbuild core tools: GNU tar utilities
VERSION=	1.12
VENDOR=		${VENDOR_GNU}

DISTNAME=	tar-${VERSION}
PKGNAME=	core-g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_INSTALL_INFO=	yes

CORE_TOOLS=	yes

.include <port.mk>
