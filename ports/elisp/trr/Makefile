#
# $Id: Makefile,v 1.1 2000/05/19 11:04:41 kunishi Exp $
#

PORTNAME=	trr
VERSION=	19
PORTREV=	1

PKG=	OPENtrr
NAME=	a type-writing training program on GNU Emacs.

VENDOR=	YAMAMOTO Hirotaka <ymmt@is.s.u-tokyo.ac.jp>
MASTER_SITES=	ftp://ftp.iamas.ac.jp/pub/Linux/JG/other-sources/elisp/
DISTNAME=	${PORTNAME}${VERSION}

BUILD_DEPENDS=	GNUmule:${PORTSDIR}/editors/mule
RUN_DEPENDS=	GNUmule:${PORTSDIR}/editors/mule

MAKE_ARGS+=	EMACS=mule
ALL_TARGET=	all

CLASS_INFO=	info/trr.info

do-configure:
	cd ${WRKSRC}; ${MV} trr.el trr.el.orig; \
	  ${SED} -e 's!%%PREFIX%%!${PREFIX}!' \
		 -e 's!%%MAINTAINER%%!${MAINTAINER}!' trr.el.orig > trr.el

pre-install:
	${MKDIR} ${INSTPREFIX}/share/emacs/site-lisp/trr
	${MKDIR} ${INSTPREFIX}/info

.include <port.mk>
