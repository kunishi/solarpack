#
# $Id: Makefile,v 1.1 2001/11/30 14:29:34 kunishi Exp $
#

PORTNAME=	yatex
VERSION=	1.69.2
PORTREV=	1

PKG=		OPUCyatex
NAME=		Yet Another TeX major mode for Emacs

MASTER_SITES=	http://www.yatex.org/
DISTNAME=	${PORTNAME}${VERSION}

USE_EMACS=	yes
NO_BUILD=	yes
MAKEFILE=	makefile
INSTALL_TARGET=	install install-yahtml
MAKE_INSTALL_ARGS=	PREFIX=${INSTPREFIX}

CLASS_INFO=	info/yatexe info/yatexj info/yahtmle info/yahtmlj

.include <port.mk>
