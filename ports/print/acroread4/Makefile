#
# $Id: Makefile,v 1.4 2000/05/18 14:08:10 kunishi Exp $
#

ARCH!=	/usr/bin/mach

.if defined(JPFONT)
PORTNAME=	ja-acrobat-reader
.else
PORTNAME=	acrobat-reader
.endif
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
WRKSRC=		${WRKDIR}

.if defined(JPFONT)
DISTFILES+=	jpnfont.tar.gz
PROTOTYPE_IN=	${PKGDIR}/prototype.jp.in
.endif

NO_BUILD=	yes

.if (${ARCH} == "sparc")
PROTOTYPE_SUB+=	AR_ARCH=sparcsolaris
AR_INSTALL_SCRIPT=	${WRKSRC}/SSOLRS.install/INSTALL
.elif (${ARCH} == "i386")
PROTOTYPE_SUB+=	AR_ARCH=intelsolaris
AR_INSTALL_SCRIPT=	${WRKSRC}/SS86RS.install/INSTALL
.endif

post-patch:
.if (${ARCH} == "sparc")
	${PATCH} ${PATCH_ARGS} < ${FILESDIR}/patch.sparc
.elif (${ARCH} == "i386")
	${PATCH} ${PATCH_ARGS} < ${FILESDIR}/patch.i386
.endif

do-build:
	@${ECHO_MSG} "do 'make install' as root."

do-install:
	@${MKDIR} ${INSTPREFIX}/Acrobat4
	@ReadInstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${PREFIX} ${AR_INSTALL_SCRIPT}
.if defined(JPFONT)
	@$InstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${INSTPREFIX} \
	  ${WRKSRC}/JPNKIT/INSTALL
.endif

post-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${INSTALL_SCRIPT} ${INSTPREFIX}/Acrobat4/bin/acroread \
	  ${INSTPREFIX}/bin/acroread

.include <port.mk>
