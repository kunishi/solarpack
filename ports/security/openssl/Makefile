#
# $Id: Makefile,v 1.6 2002/06/27 05:11:17 kunishi Exp $
#

PORTNAME=	openssl
VERSION=	0.9.6d
PORTREV=	1

PKG=		OPUCopssl
NAME=		Open Source toolkit for SSL/TLS

MASTER_SITES=	http://www.openssl.org/source/

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
.if (${ARCH} == "sparc")
CONFIGURE_ARGS+=	solaris-sparcv9-gcc
.endif
.if (${ARCH} == "i386")
CONFIGURE_ARGS+=	solaris-x86-gcc
.endif
.if defined(WITH_SHARED_LIB)
USE_BINUTILS=	yes
CONFIGURE_ARGS+=	shared
.endif
MAKE_INSTALL_ARGS+=	INSTALL_PREFIX=${WRKDIR}

.include <port.mk>
