#
# $Id: Makefile,v 1.3 2001/11/13 09:57:25 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	nkf
VERSION=	1.92
PORTREV=	1

PKG=		OPUCnkf
NAME=		nkf, Network Kanji Filter

VENDOR=Shinji Kono <kono@ie.u-ryukyu.ac.jp>
MASTER_SITES=	ftp://ftp.ie.u-ryukyu.ac.jp/pub/software/kono/ \
		ftp://ftp.win.ne.jp/pub/misc/ \
		ftp://ftp.eos.hokudai.ac.jp/pub/tools/code-conv/nkf/
EXTRACT_SUFX=	.shar
DISTNAME=	${PORTNAME}${VERSION:S/.//}

WRKSRC=		${WRKDIR}
ALL_TARGET=	nkf

do-extract:
	${MKDIR} ${WRKSRC}/NKF
	cd ${WRKSRC} && ${SH} ${DISTDIR}/${DISTFILES}

do-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/nkf ${INSTPREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nkf.1 ${INSTPREFIX}/man/man1

.include <port.mk>
