#
# $Id: Makefile,v 1.1 2001/11/30 12:42:36 kunishi Exp $
#

PORTNAME=	elib
VERSION=	1.0
PORTREV=	1

PKG=		OPUCelib
NAME=		Collections of useful routines for Emacs Lisp programs

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	emacs

USE_EMACS=	yes
MAKE_INSTALL_ARGS=	prefix=${INSTPREFIX}
CLASS_INFO=	info/elib.info

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}
	${MKDIR} ${INFODIR_TMP}

.include <port.mk>
