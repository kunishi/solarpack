#
# $Id: Makefile,v 1.2 1999/06/05 06:33:19 kunishi Exp $
#

PKG=		OPENauctx
NAME=		A much enhanced LaTeX mode for GNU Emacs
VERSION=	9.9p
VENDOR=auc-tex_mgr@sunsite.auc.dk

DISTNAME=	auctex-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/text/CTAN/support/auctex/

USE_GMAKE=	yes
USE_INSTALL_INFO=	yes

MAKE_ARGS+=	prefix=${PREFIX} EMACS=mule

MAKE_INSTALL_ARGS+=	prefix=${WRK_BASEDIR} EMACS=mule
INSTALL_TARGET=	install install-info install-contrib

DOCS=		README INSTALLATION CHANGES COPYING PROBLEMS

post-build:
	@(cd ${WRKSRC}; ${CCSMAKE} ${MAKE_ARGS} contrib)

pre-install:
	${MKDIR} ${WRK_BASEDIR}/info

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/auctex
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${WRK_BASEDIR}/share/doc/auctex
.endfor
	${INSTALL_DATA} ${FILESDIR}/auctex-setup.el \
	  ${WRK_BASEDIR}/share/emacs/site-lisp

.include <port.mk>
