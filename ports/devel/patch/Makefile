#
# $Id: Makefile,v 1.13 2000/09/27 01:27:42 kunishi Exp $
#

.include <port.pre.mk>

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
