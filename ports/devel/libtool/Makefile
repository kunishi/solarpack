#
# $Id: Makefile,v 1.5 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	libtool
VERSION=	1.3
PORTREV=	1

PKG=		GNUlibtl
NAME=		GNU libtool

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/libtool/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/libtool/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/libtool.info

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX}/share/libtool

.include <port.mk>
