#
# $Id: Makefile,v 1.15 2003/01/07 10:55:15 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gtar
VERSION=	1.13.25
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgtar
NAME=		Solaris Application Packaging tools: GNU tar utilities
.else
PKG=		OPUCgtar
NAME=		GNU tar utilities
.endif

VENDOR=		${VENDOR_GNU}
DISTNAME=	tar-${VERSION}
MASTER_SITES=	ftp://alpha.gnu.org/gnu/tar/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CLASS_INFO=	info/tar.info

.include <port.mk>
