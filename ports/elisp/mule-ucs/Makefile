#
# $Id: Makefile,v 1.1 2001/11/30 12:42:40 kunishi Exp $
#

PORTNAME=	Mule-UCS
VERSION=	0.84
PORTREV=	1

PKG=		OPUCmuluc
NAME=		Universal encoding system for GNU Emacs

MASTER_SITES=	ftp://ftp.m17n.org/pub/mule/Mule-UCS/ \
		ftp://ftp.kddlabs.co.jp/Japan/m17n.org/mule/Mule-UCS/ \
		ftp://ftp.media.kyoto-u.ac.jp/mule/Mule-UCS/

USE_EMACS=	yes
EMACS_CMD?=	emacs
EMACS_ARGS=	-q --no-site-file -batch

do-build:
	cd ${WRKSRC}/lisp/big5conv && \
	  ${EMACS_CMD} ${EMACS_ARGS} -l big5-comp.el
	cd ${WRKSRC}/lisp/jisx0213 && \
	  ${EMACS_CMD} ${EMACS_ARGS} -l x0213-comp.el
	cd ${WRKSRC} && \
	  ${EMACS_CMD} ${EMACS_ARGS} -l mucs-comp.el

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP} ${DOCDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}/lisp; \
	  ${INSTALL_DATA} *.el *.elc ${SITELISPDIR_TMP}/${PORTNAME}
.for dir in big5conv jisx0213 reldata
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}/${dir}
	cd ${WRKSRC}/lisp/${dir}; \
	  ${INSTALL_DATA} *.el* ${SITELISPDIR_TMP}/${PORTNAME}/${dir}
.endfor
	${RM} ${SITELISPDIR_TMP}/${PORTNAME}/big5conv/big5-comp.el
	${RM} ${SITELISPDIR_TMP}/${PORTNAME}/jisx0213/x0213-comp.el
	cd ${WRKSRC}/lisp; \
	  ${INSTALL_DATA} ChangeLog MuleUni.txt README* ${DOCDIR_TMP}
	${INSTALL_DATA} ${WRKSRC}/lisp/big5conv/README ${DOCDIR_TMP}/README.big5conv
	${INSTALL_DATA} ${WRKSRC}/lisp/jisx0213/ChangeLog ${DOCDIR_TMP}/ChangeLog.jisx0213
	${INSTALL_DATA} ${WRKSRC}/lisp/jisx0213/readme.txt ${DOCDIR_TMP}/README.jisx0213

.include <port.mk>
