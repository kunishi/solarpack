#
# $Id: Makefile,v 1.2 1999/06/05 04:57:57 kunishi Exp $
#

PKG=		GNUlibtl
NAME=		GNU libtool
VERSION=	1.3
VENDOR=		${VENDOR_GNU}

DISTNAME=	libtool-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/libtool/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/libtool/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${WRK_BASEDIR}/share/libtool

.include <port.mk>
