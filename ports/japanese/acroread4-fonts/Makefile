#
# $Id: Makefile,v 1.1 1999/06/16 10:16:57 kunishi Exp $
#

PKG=	ADBacrord
NAME=	Adobe Acrobat Reader
VERSION=	4.0
VENDOR=	Adobe Systems Inc.

DISTNAME=	sunsparc-arws-40
PKGNAME=	acrobat-reader-${VERSION}
MASTER_SITES=	ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/4.x/
WRKSRC=		${WRKDIR}/SSOLRS.install

NO_BUILD=	yes

do-build:
	@${ECHO_MSG} "do 'make install' as root."

do-install:
	@${MKDIR} ${INSTPREFIX}/Acrobat4
	@ReadInstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${PREFIX} \
	  ${WRKSRC}/INSTALL

post-install:
	@${MKDIR} ${INSTPREFIX}/bin
	@${INSTALL_SCRIPT} ${INSTPREFIX}/Acrobat4/bin/acroread \
	  ${INSTPREFIX}/bin/acroread

.include <port.mk>
