#
# $Id: Makefile,v 1.10 2001/11/30 12:46:34 kunishi Exp $
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

DOCS=		README INSTALLATION CHANGES COPYING PROBLEMS ChangeLog
CLASS_INFO=	info/auctex

post-build:
	@(cd ${WRKSRC}; ${CCSMAKE} ${MAKE_ARGS} contrib)

pre-install:
	@${MKDIR} ${INFODIR_TMP} ${SITELISPDIR_TMP}/${PORTNAME}

post-install:
	@${MKDIR} ${DOCDIR_TMP}
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCDIR_TMP}
.endfor
	${INSTALL_DATA} ${FILESDIR}/auctex-setup.el ${SITELISPDIR_TMP}

.include <port.mk>
