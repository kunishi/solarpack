# 
# $Id: Makefile,v 1.1 2001/11/30 15:19:10 kunishi Exp $
#

PORTNAME=	boiling-egg
VERSION=	0.02
PORTREV=	1

PKG=		OPUCboili
NAME=		Boiling Egg, tamago4 version of boiled-egg

MASTER_SITES=	http://www.gcd.org/sengoku/boiling-egg/
DISTNAME=	${PORTNAME}.el
DISTFILES=	${DISTNAME}

RUN_DEPENDS=	OPUCtamag:${PORTSDIR}/elisp/tamago

NO_EXTRACT=	yes
NO_BUILD=	yes
USE_EMACS=	yes

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}

do-install:
	${INSTALL_DATA} ${DISTDIR}/${DISTFILES} ${SITELISPDIR_TMP}/boiling-egg.el

.include <port.mk>
