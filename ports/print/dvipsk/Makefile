#
# $Id: Makefile,v 1.10 2000/06/05 01:27:49 kunishi Exp $
#

PORTNAME=	dvipsk
VERSION=	5.78a
PORTREV=	3

PKG=		OPENadvps
NAME=		dvipsk for ASCII pTeX

VENDOR=		TeX Users Group
MASTER_SITES=	ftp://ftp.center.osaka-pu.ac.jp/CTAN/dviware/dvipsk/ \
		ftp://ftp.riken.go.jp/pub/CTAN/dviware/dvipsk/ \
		ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/dviware/dvipsk/ \
		ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/dvips/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} dvipsk-jpatch-p1.4d.tar.gz

RUN_DEPENDS+=	OPENptexj:${PORTSDIR}/print/ptex

GNU_CONFIGURE=	yes
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} texmf=${INSTPREFIX}/share/texmf

CLASS_INFO=	info/dvips.info
EDITABLE_FILES=	share/texmf/dvips/config/config.ps

DVIPSDIR=	${INSTPREFIX}/share/texmf/dvips
TEXDIR=		${INSTPREFIX}/share/texmf/tex
CONTRIB_FILES=	MakeTeXPK.pl PSTricks colorsep.pro config.proto crop.lpr \
		timesmat.sty whichinpath afm-extra/*.ed bbfig/bb* \
		configs/* psfig/README psfig/lprep* volker/*
PLAIN_MACROS=	psfig/psfig.tex psfntmac/ps_plain.tex
LATEX209_MACROS=latex209/*.sty psfntmac/ps_lfonts.tex pspic/*
DOCS=		../README.jpatch dvipsk/README \
		dvipsk/dvips.texi dvipsk/dvips.help

pre-patch:
	${PATCH} -p0 -s -d ${WRKSRC} < ${WRKDIR}/dvipsk.patch

post-build:
	cd ${WRKSRC}/dvipsk/contrib; \
	  ../squeeze < colorsep.lpro > colorsep.pro

do-install:
	cd ${WRKSRC}/dvipsk; ${ENV} ${MAKE_INSTALL_ENV} ${CCSMAKE} ${MAKE_INSTALL_ARGS} ${INSTALL_TARGET}

post-install:
	${MKDIR} ${DVIPSDIR}/contrib ${TEXDIR}/plain/dvips ${TEXDIR}/latex209/dvips
	${MKDIR} ${DVIPSDIR}/contrib/afm-extra \
	  ${DVIPSDIR}/contrib/bbfig \
	  ${DVIPSDIR}/contrib/configs \
	  ${DVIPSDIR}/contrib/psfig \
	  ${DVIPSDIR}/contrib/volker
	cd ${WRKSRC}/dvipsk/contrib; \
	  for i in ${CONTRIB_FILES}; do \
	    ${INSTALL_DATA} $$i ${DVIPSDIR}/contrib/$$i; \
	  done; \
	  for i in ${PLAIN_MACROS}; do \
	    ${INSTALL_DATA} $$i ${TEXDIR}/plain/dvips; \
	  done; \
	  for i in ${LATEX209_MACROS}; do \
	    ${INSTALL_DATA} $$i ${TEXDIR}/latex209/dvips; \
	  done
	${MKDIR} ${DVIPSDIR}/config
	${CP} ${DVIPSDIR}/contrib/config.proto ${DVIPSDIR}/config/config.ps
	${MKDIR} ${INSTPREFIX}/share/doc/dvips
	for i in ${DOCS}; do \
	  ${INSTALL_DATA} ${WRKSRC}/$$i ${INSTPREFIX}/share/doc/dvips; \
	done

.include <port.mk>
