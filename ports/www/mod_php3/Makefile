#
# $Id: Makefile,v 1.1 2000/09/06 12:32:44 kunishi Exp $
#

PORTNAME=	mod_php
VERSION=	3.0.16
PORTREV=	1

PKG=		OPENphp3
NAME=		PHP3 module for Apache

MASTER_SITES=	ftp://ftp.php.net/pub/distributions/
DISTNAME=	php-${VERSION}

BUILD_DEPENDS=	APACapche:${PORTSDIR}/www/apache
RUN_DEPENDS=	APACapche:${PORTSDIR}/www/apache

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	--with-apxs=${PREFIX}/apache/bin/apxs

do-install:
	${MKDIR} ${INSTPREFIX}/libexec/mod_php3
	${INSTALL_PROGRAM} ${WRKSRC}/libphp3.so ${INSTPREFIX}/libexec/mod_php3

.include <port.mk>
