#
# $Id: Makefile,v 1.7 2000/09/27 01:27:53 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	acrobat-reader
VERSION=	4.0.5
PORTREV=	1

PKG=	ADBacrord
NAME=	Adobe Acrobat Reader

VENDOR=	Adobe Systems Inc.
.if (${ARCH} == "sparc")
DISTNAME=	sunsparc-rs-405
.elif (${ARCH} == "i386")
DISTNAME=	sunx86-ar-405
.endif
MASTER_SITES=	ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/4.x/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
.if (${ARCH} == "sparc")
WRKSRC=		${WRKDIR}/SSOLRS.install
.elif (${ARCH} == "i386")
WRKSRC=		${WRKDIR}/SS86RS.install
.endif

NO_BUILD=	yes

PROTOTYPE_IN=	${PKGDIR}/prototype.in.${ARCH}
.if (${ARCH} == "sparc")
PROTOTYPE_SUB+=	AR_ARCH=sparcsolaris
.elif (${ARCH} == "i386")
PROTOTYPE_SUB+=	AR_ARCH=intelsolaris
.endif

AR_INSTALL_SCRIPT=	${WRKSRC}/INSTALL

do-build:
	@${ECHO_MSG} "do 'make install' as root."

do-install:
	@${MKDIR} ${INSTPREFIX}/Acrobat4
	@ReadInstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${PREFIX} ${AR_INSTALL_SCRIPT}

post-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${INSTALL_SCRIPT} ${INSTPREFIX}/Acrobat4/bin/acroread \
	  ${INSTPREFIX}/bin/acroread

.include <port.mk>
