#
# $Id: Makefile,v 1.5 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	mew
VERSION=	1.94.2
PORTREV=	1

PKG=		OPENmew
NAME=		Mew, Messaging in the Emacs World

VENDOR=		Mew developing team <http://www.mew.org/>
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

INSTALL_TARGET=	install install-info install-jinfo
MAKE_INSTALL_ARGS+=	PREFIX=${INSTPREFIX}

RUN_DEPENDS=	OPENim:${PORTSDIR}/mail/im
CLASS_INFO=	info/mew.info info/mew.jis.info

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/info
	${MKDIR} ${INSTPREFIX}/share/emacs/site-lisp/mew

post-install:
	${SED} -e 's?%%PREFIX%%?${PREFIX}?' ${FILESDIR}/mew-setup.el.in \
	  > ${INSTPREFIX}/share/emacs/site-lisp/mew-setup.el
	${MKDIR} ${INSTPREFIX}/share/mew/contrib
	${INSTALL_DATA} ${WRKSRC}/contrib/* ${INSTPREFIX}/share/mew/contrib
	${MKDIR} ${INSTPREFIX}/share/mew/patches
	${INSTALL_DATA} ${WRKSRC}/patches/* ${INSTPREFIX}/share/mew/patches

.include <port.mk>
