#
# $Id: Makefile,v 1.1 1999/06/03 09:56:02 kunishi Exp $
#

DISTNAME=	MD5
PKGNAME=	md5-1.0
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
