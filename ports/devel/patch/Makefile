#
# $Id: Makefile,v 1.12 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	patch
VERSION=	2.5.4
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPpatch
NAME=		Solaris Application Packaging tools: patch
.else
PKG=		GNUpatch
NAME=		GNU patch
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/patch/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
