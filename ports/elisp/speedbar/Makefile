#
# $Id: Makefile,v 1.1 2001/11/30 12:42:42 kunishi Exp $
#

PORTNAME=	speedbar
VERSION=	0.14.b2
PORTREV=	1

PKG=		OPUCspdbr
NAME=		an Emacs Lips program to create a special skinny frame

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cedet
DISTNAME=	${PORTNAME}-0.14beta2

USE_EMACS=	yes
CLASS_INFO=	info/speedbar.info

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	@${MKDIR} ${INFODIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc *.xpm ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} *.info* ${INFODIR_TMP}

.include <port.mk>
