#
# $Id: Makefile,v 1.3 2001/11/13 09:48:27 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-a2ps
VERSION=	1.45
PORTREV=	1

PKG=	OPUCa2psp
NAME=	Text file to postscript converter (with Japanese support)

VENDOR=	Kazumasa Utashiro <utashiro@iij.ad.jp>
DISTFILES=	a2ps.pl-${VERSION}
MASTER_SITES=	ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/ \
		ftp://ftp.sra.co.jp/pub/lang/perl/sra-scripts/

WRKSRC=		${WRKDIR}
USE_PERL5=	yes
NO_BUILD=	yes

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	${CP} ${DISTDIR}/${DISTFILES} ${WRKSRC}/a2ps

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/a2ps ${INSTPREFIX}/bin

.include <port.mk>
