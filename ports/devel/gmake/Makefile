#
# $Id: Makefile,v 1.19 2001/05/28 13:56:53 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gmake
VERSION=	3.79.1
PORTREV=	1

PKG=		GNUmake
NAME=		GNU make utility

VENDOR=		${VENDOR_GNU}
DISTNAME=	make-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

LIB_DEPENDS+=	GNUgetxt:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
MAKE_ENV+=	LANG=C

CLASS_INFO=	info/make.info

.include <port.mk>
