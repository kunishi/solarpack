#
# $Id: Makefile,v 1.1 2001/11/10 10:01:49 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	freetype2
VERSION=	2.0.5
PORTREV=	1

PKG=		OPUCfrty2
NAME=		Freetype version 2, the Free TrueType Font Engine

VENDOR=		Robert Wilhelm and Werner Lemberg <http://www.freetype.org/>
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/graphics/freetype/ \
		http://prdownloads.sourceforge.net/freetype/
DISTNAME=	${PORTNAME:S/2//}-${VERSION}

USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} setup

.include <port.mk>
