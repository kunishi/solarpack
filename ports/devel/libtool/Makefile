#
# $Id: Makefile,v 1.8 2002/03/15 10:36:01 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	libtool
VERSION=	1.4.2
PORTREV=	1

PKG=		OPUClibtl
NAME=		GNU libtool

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/libtool/ \
		ftp://ftp.gnu.org/pub/gnu/libtool/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/libtool.info

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX}/share/libtool

.include <port.mk>
