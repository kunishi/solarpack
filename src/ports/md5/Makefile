#
# $Id: Makefile,v 1.5 2000/01/06 04:59:37 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		PKGBmd5
.else
PKG=		OPENmd5
.endif
NAME=		pkgbuild core tools: a program to calculate checksum for a file
VERSION=	1.0
VENDOR=		Jim Ellis <jte@cert.org>

DISTNAME=	MD5
.if defined(CORE_TOOLS)
PKGNAME=	core-md5-${VERSION}
.else
PKGNAME=	md5-${VERSION}
.endif
MASTER_SITES=	ftp://ftp.mei.co.jp/free/Network/security/MD5/
WRKSRC=		${WRKDIR}

test:
	@cd ${WRKSRC} && ${CCSMAKE} test

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5 ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/md5.1 ${INSTPREFIX}/man/man1

.include <port.mk>
