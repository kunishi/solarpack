#
# $Id: Makefile,v 1.7 2000/05/17 03:26:44 kunishi Exp $
#

.if defined(CORE_TOOLS)
PKG=		SOAPmd5
NAME=		Solaris Application Packaging tools: a program to calculate checksum for a file
.else
PKG=		OPENmd5
NAME=		a program to calculate checksum for a file
.endif
VERSION=	1.0
VENDOR=		Jim Ellis <jte@cert.org>

PORTNAME=	md5
DISTNAME=	MD5
EXTRACT_SUFX=	.tar.Z
MASTER_SITES=	ftp://ftp.aist-nara.ac.jp/pub/Security/tool/md5/
WRKSRC=		${WRKDIR}

test:
	@cd ${WRKSRC} && ${CCSMAKE} test

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/md5 ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/md5.1 ${INSTPREFIX}/man/man1

.include <port.mk>
