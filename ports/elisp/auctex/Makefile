#
# $Id: Makefile,v 1.7 2000/09/27 01:27:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	auctex
VERSION=	9.9p
PORTREV=	1

PKG=		OPENauctx
NAME=		A much enhanced LaTeX mode for GNU Emacs

VENDOR=auc-tex_mgr@sunsite.auc.dk
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/text/CTAN/support/auctex/

BUILD_DEPENDS=	mule:${PORTSDIR}/editors/mule-canna+wnn6

USE_GMAKE=	yes

MAKE_ARGS+=	prefix=${PREFIX} EMACS=mule

MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} EMACS=mule
INSTALL_TARGET=	install install-info install-contrib

DOCS=		README INSTALLATION CHANGES COPYING PROBLEMS
CLASS_INFO=	info/auctex

post-build:
	@(cd ${WRKSRC}; ${CCSMAKE} ${MAKE_ARGS} contrib)

pre-install:
	${MKDIR} ${INSTPREFIX}/info

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/auctex
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${INSTPREFIX}/share/doc/auctex
.endfor
	${INSTALL_DATA} ${FILESDIR}/auctex-setup.el \
	  ${INSTPREFIX}/share/emacs/site-lisp

.include <port.mk>
