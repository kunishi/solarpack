#
# $Id: Makefile,v 1.3 2000/05/02 04:59:20 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=	PKGBlukft
NAME=	pkgbuild core tools: Luke Mewburn's ftp
.else
PKG=	NBSDlukft
NAME=	Luke Mewburn's ftp
.endif
VERSION=	1.2
VENDOR=	NetBSD Users' Group, http://www.netbsd.org/

DISTNAME=	lukemftp-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/misc/lukemftp/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
