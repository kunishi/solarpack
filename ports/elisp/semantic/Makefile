#
# $Id: Makefile,v 1.1 2001/11/30 12:42:41 kunishi Exp $
#

PORTNAME=	semantic
VERSION=	1.4.b12
PORTREV=	1

PKG=		OPUCseman
NAME=		Emacs Semantic Bovinator

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cedet
DISTNAME=	${PORTNAME}-1.4beta12

USE_EMACS=	yes
USE_GMAKE=	yes
CLASS_INFO=	info/semantic.info

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	@${MKDIR} ${INFODIR_TMP}
	@${MKDIR} ${DOCDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc *.bnf ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} *.info* ${INFODIR_TMP}; \
	  ${INSTALL_DATA} NEWS *.bnf ${DOCDIR_TMP}

.include <port.mk>
