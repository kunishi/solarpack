#
# $Id: Makefile,v 1.13 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	gtar
VERSION=	1.13
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgtar
NAME=		Solaris Application Packaging tools: GNU tar utilities
.else
PKG=		GNUtar
NAME=		GNU tar utilities
.endif

VENDOR=		${VENDOR_GNU}
DISTNAME=	tar-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/tar.info

.include <port.mk>
