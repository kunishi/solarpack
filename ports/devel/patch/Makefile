#
# $Id: Makefile,v 1.11 2000/05/17 03:26:44 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		SOAPpatch
NAME=		Solaris Application Packaging tools: patch
.else
PKG=		GNUpatch
NAME=		GNU patch
.endif
VERSION=	2.5.4
VENDOR=		${VENDOR_GNU}

PORTNAME=	patch
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/patch/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
