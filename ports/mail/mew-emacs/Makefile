#
# $Id: Makefile,v 1.2 1999/06/05 09:23:39 kunishi Exp $
#

PKG=		OPENmew
NAME=		Mew, Messaging in the Emacs World
VERSION=	1.93
VENDOR=		Mew developing team <http://www.mew.org/>

DISTNAME=	mew-${VERSION}
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/

INSTALL_TARGET=	install install-info install-jinfo
MAKE_INSTALL_ARGS+=	PREFIX=${WRK_BASEDIR}

pre-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/info
	${MKDIR} ${WRK_BASEDIR}/share/emacs/site-lisp/mew

post-install:
	${SED} -e 's?%%PREFIX%%?${PREFIX}?' ${FILESDIR}/mew-setup.el.in \
	  > ${WRK_BASEDIR}/share/emacs/site-lisp/mew-setup.el
	${MKDIR} ${WRK_BASEDIR}/share/mew/contrib
	${INSTALL_DATA} ${WRKSRC}/contrib/* ${WRK_BASEDIR}/share/mew/contrib
	${MKDIR} ${WRK_BASEDIR}/share/mew/patches
	${INSTALL_DATA} ${WRKSRC}/patches/* ${WRK_BASEDIR}/share/mew/patches

.include <port.mk>
