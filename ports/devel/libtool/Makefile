#
# $Id: Makefile,v 1.7 2000/09/27 01:27:42 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	libtool
VERSION=	1.3.4
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
