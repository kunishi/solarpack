#
# $Id: Makefile,v 1.1 2001/11/30 12:42:44 kunishi Exp $
#

PORTNAME=	xslide
VERSION=	0.2
PORTREV=	1

PKG=		OPUCxslid
NAME=		an Emacs major mode for editing XSL stylesheets

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	xslide
DISTFILES=	${PORTNAME}${VERSION:S/.//g}${EXTRACT_SUFX}
WRKSRC=		${WRKDIR}

USE_ZIP=	yes
USE_EMACS=	yes
USE_GMAKE=	yes
ALL_TARGET=	${PORTNAME}

DOCS=		CHANGELOG.TXT README.TXT dot_emacs

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP} ${DOCDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc *.xsl ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} ${DOCS} ${DOCDIR_TMP}

.include <port.mk>
