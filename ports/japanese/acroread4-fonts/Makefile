#
# $Id: Makefile,v 1.3 2000/05/17 06:42:47 kunishi Exp $
#

.if defined(JPFONT)
PORTNAME=	ja-acrobat-reader
.else
PORTNAME=	acrobat-reader
.endif
VERSION=	4.0
PORTREV=	1

PKG=	ADBacrord
NAME=	Adobe Acrobat Reader

VENDOR=	Adobe Systems Inc.
DISTNAME=	sunsparc-arws-40
MASTER_SITES=	ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/4.x/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
WRKSRC=		${WRKDIR}

.if defined(JPFONT)
DISTFILES+=	jpnfont.tar.gz
PROTOTYPE_IN=	${PKGDIR}/prototype.jp.in
.endif

NO_BUILD=	yes

do-build:
	@${ECHO_MSG} "do 'make install' as root."

do-install:
	@${MKDIR} ${INSTPREFIX}/Acrobat4
	@ReadInstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${PREFIX} \
	  ${WRKSRC}/SSOLRS.install/INSTALL
.if defined(JPFONT)
	@$InstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${INSTPREFIX} \
	  ${WRKSRC}/JPNKIT/INSTALL
.endif

post-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${INSTALL_SCRIPT} ${INSTPREFIX}/Acrobat4/bin/acroread \
	  ${INSTPREFIX}/bin/acroread

.include <port.mk>
