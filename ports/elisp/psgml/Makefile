#
# $Id: Makefile,v 1.1 2001/11/30 12:42:40 kunishi Exp $
#

PORTNAME=	psgml
VERSION=	1.2.2
PORTREV=	1

PKG=		OPUCpsgml
NAME=		a major mode for editing SGML and XML documents for emacs

MASTER_SITES=	ftp://ftp.lysator.liu.se/pub/sgml/
PATCH_SITES=	http://alpha.c.oka-pu.ac.jp/~kunishi/tmp/
PATCHFILES=	${DISTNAME}-symbol-conflict.patch

USE_EMACS=	yes
PATCH_DIST_STRIP=	-p1
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
INSTALL_TARGET=	install install-info

CLASS_INFO=	info/psgml-api.info info/psgml.info

pre-install:
	@${MKDIR} ${INFODIR_TMP}

.include <port.mk>
