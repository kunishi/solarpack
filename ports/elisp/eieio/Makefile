#
# $Id: Makefile,v 1.1 2001/11/30 12:42:35 kunishi Exp $
#

PORTNAME=	eieio
VERSION=	0.17.b3
PORTREV=	1

PKG=		OPUCeieio
NAME=		Enhanced Integration of Emacs Interpreted Objects

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cedet
DISTNAME=	${PORTNAME}-0.17beta3

USE_EMACS=	yes
CLASS_INFO=	info/eieio.info

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	@${MKDIR} ${INFODIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} *.info* ${INFODIR_TMP}

.include <port.mk>
