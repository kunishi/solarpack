#
# $Id: Makefile,v 1.2 1999/06/05 05:48:59 kunishi Exp $
#

PKG=		OPENmd5
NAME=		A program to calculate checksum for a file
VERSION=	1.0
VENDOR=		Jim Ellis <jte@cert.org>

DISTNAME=	MD5
PKGNAME=	md5-${VERSION}
MASTER_SITES=	ftp://ftp.tut.ac.jp/pub/Security/tool/md5/
WRKSRC=		${WRKDIR}

test:
	@cd ${WRKSRC} && ${CCSMAKE} test

do-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5 ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/man/man1
	${INSTALL_MAN} ${WRKSRC}/md5.1 ${WRK_BASEDIR}/man/man1

.include <port.mk>
