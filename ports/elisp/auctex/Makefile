#
# $Id: Makefile,v 1.9 2001/11/20 14:49:25 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	auctex
VERSION=	10.0g
PORTREV=	1

PKG=		OPUCauctx
NAME=		A much enhanced LaTeX mode for GNU Emacs

VENDOR=		auc-tex_mgr@sunsite.auc.dk
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/text/CTAN/support/auctex/

BUILD_DEPENDS=	OPUCemacs:${PORTSDIR}/editors/emacs

USE_GMAKE=	yes

MAKE_ARGS+=	prefix=${PREFIX} EMACS=emacs

MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} EMACS=emacs
INSTALL_TARGET=	install install-info install-contrib

INFODIR=	${INSTPREFIX}/info
SITELISPDIR=	${INSTPREFIX}/share/emacs/site-lisp
DOCS=		README INSTALLATION CHANGES COPYING PROBLEMS ChangeLog
CLASS_INFO=	info/auctex

post-build:
	@(cd ${WRKSRC}; ${CCSMAKE} ${MAKE_ARGS} contrib)

pre-install:
	${MKDIR} ${INFODIR} ${SITELISPDIR}/${PORTNAME}

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/auctex
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${INSTPREFIX}/share/doc/auctex
.endfor
	${INSTALL_DATA} ${FILESDIR}/auctex-setup.el \
	  ${INSTPREFIX}/share/emacs/site-lisp

.include <port.mk>
