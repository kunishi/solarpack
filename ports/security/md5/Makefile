#
# $Id: Makefile,v 1.9 2000/06/02 00:44:04 kunishi Exp $
#

PORTNAME=	md5
VERSION=	1.0
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPmd5
NAME=		Solaris Application Packaging tools: a program to calculate checksum for a file
.else
PKG=		OPENmd5
NAME=		a program to calculate checksum for a file
.endif

VENDOR=		Jim Ellis <jte@cert.org>
DISTNAME=	MD5
EXTRACT_SUFX=	.tar.Z
MASTER_SITES=	ftp://ftp.aist-nara.ac.jp/pub/Security/tool/md5/
WRKSRC=		${WRKDIR}

ALL_TARGET=	md5

test:
	@cd ${WRKSRC} && ${CCSMAKE} test

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5 ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/md5.1 ${INSTPREFIX}/man/man1

.include <port.mk>
