#
# $Id: Makefile,v 1.12 2003/03/28 07:04:16 kunishi Exp $
#

PORTNAME=	mew
VERSION=	3.2
PORTREV=	1

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
		contrib/mew-browse.el \
		contrib/mew-caesar.el \
		contrib/mew-fancy-summary.el \
		contrib/mew-nmz-fixer.el \
		contrib/mew-nmz.el \
		contrib/mew-refile-view.el \
		contrib/mew-smime-ja.texi \
		contrib/mew-toolbar-frame.el
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
