#
# $Id: Makefile,v 1.18 2000/09/27 06:43:05 kunishi Exp $
#

.include <port.pre.mk>

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
.if defined(CORE_TOOLS)
CONFIGURE_ARGS+=	--disable-nls
PROTOTYPE_IN=		${PKGDIR}/prototype.in.nonls
.endif
MAKE_ENV+=	LANG=C

CLASS_INFO=	info/make.info

.include <port.mk>
