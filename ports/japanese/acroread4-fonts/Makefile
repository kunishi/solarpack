#
# $Id: Makefile,v 1.6 2000/09/27 01:27:51 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-acrobat-reader-fonts
VERSION=	4.0.5
PORTREV=	1

PKG=	ADBjacrfn
NAME=	Adobe Acrobat Reader Japanese Fonts

MASTER_SITES=	ftp://ftp-pac.adobe.com/pub/adobe/acrobatreader/unix/4.x/
DISTFILES=	jpnfont.tar.gz

RUN_DEPENDS=	ADBacrord:${PORTSDIR}/print/acroread4

WRKSRC=		${WRKDIR}/JPNKIT

NO_BUILD=	yes

do-build:
	@${ECHO_MSG} "do 'make install' as root."

do-install:
	@$InstallDir=${INSTPREFIX}/Acrobat4 PREFIX=${INSTPREFIX} \
	  ${WRKSRC}/INSTALL

.include <port.mk>
