#
# $Id: Makefile,v 1.4 1999/08/27 12:10:57 kunishi Exp $
#

PKG=		PKGBmd5
NAME=		pkgbuild core tools: a program to calculate checksum for a file
VERSION=	1.0
VENDOR=		Jim Ellis <jte@cert.org>

DISTNAME=	MD5
PKGNAME=	core-md5-${VERSION}
MASTER_SITES=	ftp://ftp.mei.co.jp/free/Network/security/MD5/
WRKSRC=		${WRKDIR}

CORE_TOOLS=	yes

test:
	@cd ${WRKSRC} && ${CCSMAKE} test

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5 ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/md5.1 ${INSTPREFIX}/man/man1

.include <port.mk>
