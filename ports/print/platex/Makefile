#
# $Id: Makefile,v 1.3 2000/09/27 01:27:55 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-platex2e-jis
VERSION=	1999.08.09
PORTREV=	1

PKG=		OPENpltxj
NAME=		ASCII Japanese pLaTeX2e, JIS version

VENDOR=		ASCII Corporation, http://www.ascii.co.jp/ptex/
DISTNAME=	pl19990809j
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/platex/1999-08-09/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/distfiles/LOCAL_PORTS/ \
		ftp://ftp.ams.org/pub/tex/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} base-9906.tar.gz \
		ecfonts-1.0.tar.gz tfm.tar \
		amsfonts-sources.tar.Z
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX} base-9906.tar.gz \
		ecfonts-1.0.tar.gz \
		amsfonts-sources.tar.Z

BUILD_DEPENDS=	OPENptexj:${PORTSDIR}/print/ptex
RUN_DEPENDS=	OPENptexj:${PORTSDIR}/print/ptex

WRKSRC=		${WRKDIR}/19990809
TEXMFDIR=	${INSTPREFIX}/share/texmf

post-extract:
	@${TAR} -C ${WRKDIR} -xf ${DISTDIR}/tfm.tar

do-build:
	cd ${WRKDIR}/base; tex -ini unpack.ins; tex -ini latex.ltx
	cd ${WRKSRC}; \
	  ${ENV} TEXINPUTS=.:${WRKDIR}/base//: ptex -ini plcore.ins; \
	  ${ENV} TEXINPUTS=.:${WRKDIR}/base//: ptex -ini platex.ltx

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${TEXMFDIR}/fonts/tfm/public/ams
	${MKDIR} ${TEXMFDIR}/fonts/source/public/ams
	${MKDIR} ${TEXMFDIR}/fonts/tfm/public/ec
	${MKDIR} ${TEXMFDIR}/fonts/source/public/ec
	${MKDIR} ${TEXMFDIR}/tex/latex/base
	${MKDIR} ${TEXMFDIR}/tex/platex/base
	${MKDIR} ${TEXMFDIR}/web2c
	${CP} ${WRKDIR}/base/* ${TEXMFDIR}/tex/latex/base
	${MV} -f ${TEXMFDIR}/tex/latex/base/latex.fmt ${TEXMFDIR}/web2c
	${CP} ${WRKSRC}/* ${TEXMFDIR}/tex/platex/base
	${MV} -f ${TEXMFDIR}/tex/platex/base/platex.fmt ${TEXMFDIR}/web2c
	${CP} ${WRKDIR}/tfm/* ${TEXMFDIR}/fonts/tfm/public/ams
	${CP} -R ${WRKDIR}/amsfonts/sources/* ${TEXMFDIR}/fonts/source/public/ams
	${CP} ${WRKDIR}/ec/tfm/* ${TEXMFDIR}/fonts/tfm/public/ec
	${CP} ${WRKDIR}/ec/src/* ${TEXMFDIR}/fonts/source/public/ec

.include <port.mk>
