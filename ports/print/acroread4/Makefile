#
# $Id: Makefile,v 1.2 1999/06/16 10:54:42 kunishi Exp $
#

PKG=	ADBacrord
NAME=	Adobe Acrobat Reader
VERSION=	4.0
VENDOR=	Adobe Systems Inc.

DISTNAME=	sunsparc-arws-40
PKGNAME=	acrobat-reader-${VERSION}
MASTER_SITES=	ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/4.x/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
WRKSRC=		${WRKDIR}

.if defined(JPFONT)
PKGNAME=	acrobat-reader-jp-${VERSION}
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
