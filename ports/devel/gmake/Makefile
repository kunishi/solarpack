#
# $Id: Makefile,v 1.16 2000/06/26 02:22:28 kunishi Exp $
#

PORTNAME=	gmake
VERSION=	3.79.1
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgmake
NAME=		Solaris Application Packaging tools: GNU make utility
.else
PKG=		GNUmake
NAME=		GNU make utility
.endif

VENDOR=		${VENDOR_GNU}
DISTNAME=	make-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/

.if !defined(CORE_TOOLS)
LIB_DEPENDS+=	GNUgetxt:${PORTSDIR}/devel/gettext
.endif

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
MAKE_ENV+=	LANG=C

CLASS_INFO=	info/make.info

.include <port.mk>
