#
# $Id: Makefile,v 1.2 2001/04/14 04:15:47 kunishi Exp $
#

PORTNAME=	openssl
VERSION=	0.9.6a
PORTREV=	1

PKG=		OPENssl
NAME=		Open Source toolkit for SSL/TLS

MASTER_SITES=	http://www.openssl.org/source/

USE_BINUTILS=	yes
HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	config
CONFIGURE_ARGS+=	shared
MAKE_ARGS+=		CC=${CC}
MAKE_INSTALL_ARGS+=	INSTALL_PREFIX=${WRKDIR}

post-configure:
	${PERL} -pi -e 's/^CC=/#CC=/;' ${WRKSRC}/Makefile.ssl

.include <port.mk>
