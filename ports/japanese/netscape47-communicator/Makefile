#
# $Id: Makefile,v 1.1 1999/08/18 11:20:43 kunishi Exp $
#

PKG=		NSjacomm
NAME=		Netscape Communicator with Japanese localization
VERSION=	4.61
VENDOR=		Netscape Communications Corporation

DISTNAME=	communicator-v461-export.sparc-sun-solaris2.5.1
PKGNAME=	ja-netscape-communicator-${VERSION}
MASTER_SITES=	ftp://ftp.netscape.com/pub/communicator/english/4.61/unix/supported/sunos551/complete_install/ \
		http://www.bres.tsukuba.ac.jp/~yohta/netscape/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		communicator-ja-euc-v461-export.generic-generic-generic.tar.gz

NO_BUILD=	yes
PREFIX=		/usr
WRKSRC?=	${WRKDIR}/communicator-v461.sparc-sun-solaris2.5.1

MAKE_INSTALL_ENV+=	MOZILLA_HOME=${INSTPREFIX}/local/netscape

post-patch:
	cd ${WRKDIR}/netscape-ja_euc && ${PATCH} < ${FILESDIR}/patch-ab

do-install:
	cd ${WRKSRC} && ${ENV} ${MAKE_INSTALL_ENV} ./ns-install
	cd ${WRKDIR}/netscape-ja_euc && ${ENV} ${MAKE_INSTALL_ENV} ./install.ja

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX} 

.include <port.mk>
