#
# $Id: Makefile,v 1.10 2000/11/01 11:15:39 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-netscape-communicator
VERSION=	4.76
PORTREV=	1

PKG=		NSjacomm
NAME=		Netscape Communicator with Japanese localization
VENDOR=		Netscape Communications Corporation

NS_SHORTVERSION=	476

.if (${ARCH} == "sparc")
DISTNAME=	communicator-v${NS_SHORTVERSION}-us.sparc-sun-solaris2.5.1
MASTER_SITES=	ftp://sunsite.sut.ac.jp/pub/archives/WWW/netscape/communicator/english/${VERSION}/unix/supported/sunos551/complete_install/ \
		ftp://ftp.netscape.com/pub/communicator/english/${VERSION}/unix/supported/sunos551/complete_install/
.elif (${ARCH} == "i386")
DISTNAME=	communicator-v${NS_SHORTVERSION}-us.x86-sun-solaris2.5.1
MASTER_SITES=	ftp://sunsite.sut.ac.jp/pub/archives/WWW/netscape/communicator/english/${VERSION}/unix/supported/sunos551_x86/complete_install/ \
		ftp://ftp.netscape.com/pub/communicator/english/${VERSION}/unix/supported/sunos551_x86/complete_install/
.endif
MASTER_SITES+=	http://www.imasy.or.jp/~mistral/netscape/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/distfiles/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		communicator-ja-euc-v${NS_SHORTVERSION}-export.generic-generic-generic.tar.gz

NO_BUILD=	yes
PREFIX=		/usr
.if (${ARCH} == "sparc")
WRKSRC?=	${WRKDIR}/communicator-v${NS_SHORTVERSION}.sparc-sun-solaris2.5.1
.elif (${ARCH} == "i386")
WRKSRC?=	${WRKDIR}/communicator-v${NS_SHORTVERSION}.x86-sun-solaris2.5.1
.endif

MAKE_INSTALL_ENV+=	MOZILLA_HOME=${INSTPREFIX}/local/netscape

post-patch:
	cd ${WRKDIR}/netscape-ja_euc && ${PATCH} < ${FILESDIR}/patch-ab

do-install:
	cd ${WRKSRC} && ${ENV} ${MAKE_INSTALL_ENV} ./ns-install
	cd ${WRKDIR}/netscape-ja_euc && ${ENV} ${MAKE_INSTALL_ENV} ./install

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX} 
	${MKDIR} ${INSTPREFIX}/local/bin
	cd ${INSTPREFIX}/local/bin && ${LN} -s ../netscape/netscape netscape

.include <port.mk>
