#
# $Id: Makefile,v 1.20 2003/01/07 10:33:11 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gmake
VERSION=	3.80
PORTREV=	1

PKG=		OPUCgmake
NAME=		GNU make utility

VENDOR=		${VENDOR_GNU}
DISTNAME=	make-${VERSION}
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	make

LIB_DEPENDS+=	OPUCgetxt:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
MAKE_ENV+=	LANG=C

CLASS_INFO=	info/make.info

.include <port.mk>
