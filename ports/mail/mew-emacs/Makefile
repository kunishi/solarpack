#
# $Id: Makefile,v 1.3 1999/06/09 02:34:19 kunishi Exp $
#

PKG=		OPENmew
NAME=		Mew, Messaging in the Emacs World
VERSION=	1.93
VENDOR=		Mew developing team <http://www.mew.org/>

DISTNAME=	mew-${VERSION}
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

INSTALL_TARGET=	install install-info install-jinfo
MAKE_INSTALL_ARGS+=	PREFIX=${INSTPREFIX}

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
