#
# $Id: Makefile,v 1.2 2000/09/27 01:27:57 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-a2ps
VERSION=	1.44
PORTREV=	1

PKG=	OPENa2psp
NAME=	Text file to postscript converter (with Japanese support)

VENDOR=	Kazumasa Utashiro <utashiro@iij.ad.jp>
DISTFILES=	a2ps.pl-${VERSION}
MASTER_SITES=	ftp://ftp.iij.ad.jp/pub/IIJ/dist/utashiro/perl/ \
		ftp://ftp.sra.co.jp/pub/lang/perl/sra-scripts/

RUN_DEPENDS=	OPENperl:${PORTSDIR}/lang/perl5

WRKSRC=		${WRKDIR}
NO_BUILD=	yes

do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	${CP} ${DISTDIR}/${DISTFILES} ${WRKSRC}

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/a2ps.pl-${VERSION} ${INSTPREFIX}/bin/a2ps

.include <port.mk>
