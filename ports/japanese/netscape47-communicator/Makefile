#
# $Id: Makefile,v 1.2 2000/04/26 08:32:46 kunishi Exp $
#

PKG=		NSjacomm
NAME=		Netscape Communicator with Japanese localization
VERSION=	4.72
VENDOR=		Netscape Communications Corporation

ARCH!=		/usr/bin/mach

.if (${ARCH} == "sparc")
DISTNAME=	communicator-v472-export.sparc-sun-solaris2.5.1
MASTER_SITES=	ftp://ftp.netscape.com/pub/communicator/english/4.72/unix/supported/sunos551/complete_install/
.elif (${ARCH} == "i386")
DISTNAME=	communicator-v472-export.x86-sun-solaris2.5.1
MASTER_SITES=	ftp://ftp.netscape.com/pub/communicator/english/4.72/unix/supported/sunos551_x86/complete_install/
.endif
PKGNAME=	ja-netscape-communicator-${VERSION}
MASTER_SITES+=	http://www.bres.tsukuba.ac.jp/~yohta/netscape/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		communicator-ja-euc-v472-export.generic-generic-generic.tar.gz

NO_BUILD=	yes
PREFIX=		/usr
.if (${ARCH} == "sparc")
WRKSRC?=	${WRKDIR}/communicator-v472.sparc-sun-solaris2.5.1
.elif (${ARCH} == "i386")
WRKSRC?=	${WRKDIR}/communicator-v472.x86-sun-solaris2.5.1
.endif

MAKE_INSTALL_ENV+=	MOZILLA_HOME=${INSTPREFIX}/local/netscape

post-patch:
	cd ${WRKDIR}/netscape-ja_euc && ${PATCH} < ${FILESDIR}/patch-ab

do-install:
	cd ${WRKSRC} && ${ENV} ${MAKE_INSTALL_ENV} ./ns-install
	cd ${WRKDIR}/netscape-ja_euc && ${ENV} ${MAKE_INSTALL_ENV} ./install.ja

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX} 
	${MKDIR} ${INSTPREFIX}/local/bin
	cd ${INSTPREFIX}/local/bin && ${LN} -s ../netscape/netscape

.include <port.mk>
