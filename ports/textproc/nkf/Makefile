#
# $Id: Makefile,v 1.2 2000/09/27 01:27:58 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	nkf
VERSION=	1.71
PORTREV=	1

PKG=		OPENnkf
NAME=		nkf, Network Kanji Filter

VENDOR=Shinji Kono <kono@ie.u-ryukyu.ac.jp>
MASTER_SITES=	ftp://ftp.ie.u-ryukyu.ac.jp/pub/software/kono/ \
		ftp://ftp.win.ne.jp/pub/misc/ \
		ftp://ftp.eos.hokudai.ac.jp/pub/tools/code-conv/nkf/
EXTRACT_SUFX=	.shar
DISTNAME=	${PORTNAME}171

WRKSRC=		${WRKDIR}
ALL_TARGET=	nkf

do-extract:
	${MKDIR} ${WRKSRC}
	cd ${WRKSRC} && ${SH} ${DISTDIR}/${DISTFILES}

do-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/nkf ${INSTPREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nkf.1 ${INSTPREFIX}/man/man1

.include <port.mk>
