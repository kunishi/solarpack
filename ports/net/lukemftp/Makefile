#
# $Id: Makefile,v 1.2 2000/01/06 11:19:40 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=	PKGBlukft
.else
PKG=	NBSDlukft
.endif
NAME=	Luke Mewburn's ftp
VERSION=	1.1
VENDOR=	NetBSD Users' Group, http://www.netbsd.org/

DISTNAME=	lukemftp-${VERSION}
.if defined(CORE_TOOLS)
PKGNAME=	core-${DISTNAME}
.endif
MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/misc/lukemftp/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
