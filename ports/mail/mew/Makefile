#
# $Id: Makefile,v 1.9 2001/11/30 11:04:29 kunishi Exp $
#

PORTNAME=	mew
VERSION=	2.1
PORTREV=	2

PKG=		OPUCmew
NAME=		Mew, Messages in the Emacs World

MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

BUILD_DEPENDS=	OPUCemacs:${PORTSDIR}/editors/emacs
RUN_DEPENDS=	OPUCemacs:${PORTSDIR}/editors/emacs

EMACS?=		emacs
MAKE_ARGS+=	EMACS=${EMACS}
MAKE_INSTALL_ARGS+=	EMACS=${EMACS}
ALL_TARGET=	all info jinfo
INSTALL_TARGET=	install install-jinfo

DOCDIR=		${INSTPREFIX}/share/doc/${PORTNAME}
DOCS=		00api 00changes 00copyright 00copyright.jis 00diff 00readme
CONTRIBS=	contrib/00readme \
		contrib/00readme-namazu.jis \
		contrib/README-mewinc.jis \
		contrib/incdir \
		contrib/incmbox \
		contrib/mew-browse.el \
		contrib/mew-caesar.el \
		contrib/mew-fancy-summary.el \
		contrib/mew-gnus.el \
		contrib/mew-nmz-fixer.el \
		contrib/mew-nmz.el \
		contrib/mew-refile-view.el \
		contrib/mew-smime-ja.texi \
		contrib/mew-toolbar-frame.el \
		contrib/mewinc
CLASS_INFO=	info/mew.info info/mew.jis.info

post-install:
	${MKDIR} ${DOCDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCDIR}
.endfor
	${MKDIR} ${DOCDIR}/contrib
.for file in ${CONTRIBS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCDIR}/contrib
.endfor

.include <port.mk>
