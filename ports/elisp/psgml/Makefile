#
# $Id: Makefile,v 1.2 2001/12/03 13:16:48 kunishi Exp $
#

PORTNAME=	psgml
VERSION=	1.2.3
PORTREV=	2

PKG=		OPUCpsgml
NAME=		a major mode for editing SGML and XML documents for emacs

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	psgml
PATCH_SITES=	http://alpha.c.oka-pu.ac.jp/~kunishi/tmp/
PATCHFILES=	${DISTNAME}-symbol-conflict.patch

USE_EMACS=	yes
PATCH_DIST_STRIP=	-p0
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
INSTALL_TARGET=	install install-info

CLASS_INFO=	info/psgml-api.info info/psgml.info

pre-install:
	@${MKDIR} ${INFODIR_TMP}

.include <port.mk>
