#
# $Id: Makefile,v 1.11 2003/01/07 05:15:34 kunishi Exp $
# 

.include <port.pre.mk>

PORTNAME=	gettext
VERSION=	0.11.5
PORTREV=	1

PKG=		OPUCgetxt
NAME=		GNU gettext package

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	${PORTNAME}

LIB_DEPENDS=	OPUCiconv:${PORTSDIR}/converters/libiconv

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKE_ARGS+=	JAVACOMP=javac
MAKE_INSTALL_ARGS+=	lispdir=${INSTPREFIX}/share/emacs/site-lisp

CLASS_INFO=	info/gettext.info

.include <port.mk>
