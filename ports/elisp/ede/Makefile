#
# $Id: Makefile,v 1.1 2001/11/30 12:42:34 kunishi Exp $
#

PORTNAME=	ede
VERSION=	1.0.b2
PORTREV=	1

PKG=		OPUCede
NAME=		Emacs Development Environment

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	cedet
DISTNAME=	EDE-1.0.beta2

BUILD_DEPENDS=	OPUCeieio:${PORTSDIR}/elisp/eieio \
		OPUCseman:${PORTSDIR}/elisp/semantic \
		OPUCspdbr:${PORTSDIR}/elisp/speedbar
RUN_DEPENDS=	OPUCeieio:${PORTSDIR}/elisp/eieio \
		OPUCseman:${PORTSDIR}/elisp/semantic \
		OPUCspdbr:${PORTSDIR}/elisp/speedbar

USE_EMACS=	yes
USE_GMAKE=	yes
CLASS_INFO=	info/ede.info

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	@${MKDIR} ${INFODIR_TMP}
	@${MKDIR} ${DOCDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} *.el *.elc ${SITELISPDIR_TMP}/${PORTNAME}; \
	  ${INSTALL_DATA} *.info* ${INFODIR_TMP}; \
	  ${INSTALL_DATA} NEWS README TODO ${DOCDIR_TMP}

.include <port.mk>
