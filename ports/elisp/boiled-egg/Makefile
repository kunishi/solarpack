#
# $Id: Makefile,v 1.2 2000/09/27 01:27:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	boiled-egg
VERSION=	3.16
PORTREV=	1

PKG=		OPENboile
NAME=		boiled-egg
VENDOR=		Miura Kinya

MASTER_SITES=	ftp://ftp.eos.hokudai.ac.jp/pub/GNU/emacs/elisp/
DISTNAME=	${PORTNAME}

BUILD_DEPENDS=	GNUmule:${PORTSDIR}/editors/mule
RUN_DEPENDS=	GNUmule:${PORTSDIR}/editors/mule

EMACS=		mule

do-build:
	cd ${WRKSRC}; \
	  ${EMACS} -batch -q -f batch-byte-compile boiled-egg.el

do-install:
	${MKDIR} ${INSTPREFIX}/share/emacs/site-lisp
	${INSTALL_DATA} ${WRKSRC}/boiled-egg.el ${WRKSRC}/boiled-egg.elc \
	  ${INSTPREFIX}/share/emacs/site-lisp
	${MKDIR} ${INSTPREFIX}/share/doc/boiled-egg
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} COPYING ChangeLog README.* ${INSTPREFIX}/share/doc/boiled-egg

.include <port.mk>
