#
# $Id: Makefile,v 1.6 2000/05/17 03:59:58 kunishi Exp $
#

PORTNAME=	lukemftp
VERSION=	1.2
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=	SOAPlukft
NAME=	Solaris Application Packaging tools: Luke Mewburn's ftp
.else
PKG=	NBSDlukft
NAME=	Luke Mewburn's ftp
.endif

VENDOR=	NetBSD Users' Group, http://www.netbsd.org/
MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/misc/lukemftp/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <port.mk>
