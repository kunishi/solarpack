#
# $Id: Makefile,v 1.1 2001/11/30 12:42:34 kunishi Exp $
#

PORTNAME=	ecb
VERSION=	1.52
PORTREV=	1

PKG=		OPUCecb
NAME=		a source code browser for Emacs

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ecb

BUILD_DEPENDS=	OPUCjde:${PORTSDIR}/elisp/jde
RUN_DEPENDS=	OPUCjde:${PORTSDIR}/elisp/jde

USE_EMACS=	yes
USE_GMAKE=	yes
MAKE_ARGS=	LOADPATH="${LOCALBASE}/share/emacs/site-lisp/semantic \
			  ${LOCALBASE}/share/emacs/site-lisp/eieio \
			  ${LOCALBASE}/share/emacs/site-lisp/jde/lisp"

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	@${MKDIR} ${DOCDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} HISTORY README RELEASE_NOTES ${DOCDIR_TMP}

.include <port.mk>
