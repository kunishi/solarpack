#
# $Id: Makefile,v 1.3 2000/09/27 01:27:59 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	mod_php
VERSION=	3.0.16
PORTREV=	1

PKG=		OPENmphp3
NAME=		PHP3 module for Apache

MASTER_SITES=	ftp://ftp.php.net/pub/distributions/
DISTNAME=	php-${VERSION}

BUILD_DEPENDS=	APACapche:${PORTSDIR}/www/apache
RUN_DEPENDS=	APACapche:${PORTSDIR}/www/apache

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS=	--with-apxs=${PREFIX}/apache/bin/apxs

.if defined(WITH_MYSQL)
BUILD_DEPENDS+=	OPENmysql:${PORTSDIR}/databases/mysql
RUN_DEPENDS+=	OPENmysql:${PORTSDIR}/databases/mysql
CONFIGURE_ARGS+= --with-mysql
.endif

do-install:
	${MKDIR} ${INSTPREFIX}/libexec/mod_php3
	${INSTALL_PROGRAM} ${WRKSRC}/libphp3.so ${INSTPREFIX}/libexec/mod_php3

.include <port.mk>
