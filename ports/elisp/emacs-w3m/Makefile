#
# $Id: Makefile,v 1.1 2001/11/30 12:42:38 kunishi Exp $
#

PORTNAME=	emacs-w3m
VERSION=	1.2.1
PORTREV=	1

PKG=		OPUCemw3m
NAME=		Simple front-end to w3m for Emacs

MASTER_SITES=	http://emacs-w3m.namazu.org/
DISTNAME=	w3m_el-${VERSION}

RUN_DEPENDS=	OPUCw3m:${PORTSDIR}/www/w3m

GNU_CONFIGURE=	yes
USE_EMACS=	yes
ALL_TARGET=	default
INSTALL_TARGET=	install install-icons

.include <port.mk>
