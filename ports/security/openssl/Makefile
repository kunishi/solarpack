#
# $Id: Makefile,v 1.1 2000/11/19 07:35:53 kunishi Exp $
#

PORTNAME=	openssl
VERSION=	0.9.6
PORTREV=	1

PKG=		OPENssl
NAME=		Open Source toolkit for SSL/TLS

MASTER_SITES=	http://www.openssl.org/source/

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	shared
MAKE_INSTALL_ARGS+=	INSTALL_PREFIX=${WRKDIR}

.include <port.mk>
