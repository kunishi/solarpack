#
# $Id: Makefile,v 1.2 2000/09/27 01:27:55 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	platex209
VERSION=	1.0
PORTREV=	1

PKG=		OPENpl09j
NAME=		ASCII Japanese pLaTeX 2.09 with JIS code support
VENDOR=		ASCII Corp. <http://www.ascii.co.jp/ptex/>

MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/platex/
DISTNAME=	${PORTNAME}

BUILD_DEPENDS=	OPENptexj:${PORTSDIR}/print/ptex
RUN_DEPENDS=	OPENptexj:${PORTSDIR}/print/ptex

TEXMF=		${INSTPREFIX}/share/texmf

do-build:
	cd ${WRKSRC}; ptex -ini 'plplain.tex \dump'

do-install:
	${MKDIR} ${TEXMF}/tex/platex209/doc
	${MKDIR} ${TEXMF}/tex/platex209/general
	${MKDIR} ${TEXMF}/tex/platex209/sty
	${INSTALL_DATA} ${WRKSRC}/README.txt ${TEXMF}/tex/platex209
	${INSTALL_DATA} ${WRKSRC}/*.doc ${TEXMF}/tex/platex209/doc
	${INSTALL_DATA} ${WRKSRC}/*.tex ${TEXMF}/tex/platex209/general
	${INSTALL_DATA} ${WRKSRC}/*.sty ${TEXMF}/tex/platex209/sty
	${MKDIR} ${TEXMF}/web2c
	${INSTALL_DATA} ${WRKSRC}/plplain.fmt ${TEXMF}/web2c/platex209.fmt
	${MKDIR} ${INSTPREFIX}/bin
	cd ${INSTPREFIX}/bin && ${LN} -sf ${PREFIX}/bin/ptex platex209

.include <port.mk>
