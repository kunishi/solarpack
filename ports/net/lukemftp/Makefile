#
# $Id: Makefile,v 1.10 2000/11/07 01:59:55 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	lukemftp
VERSION=	1.5
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
