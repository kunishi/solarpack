#
# $Id: Makefile,v 1.21 2001/03/30 01:33:51 kunishi Exp $
#

.include <port.pre.mk>

OSREL!=		/usr/bin/uname -r

PORTNAME=	gcc
VERSION=	2.95.2
PORTREV=	1

.if defined(CORE_TOOLS)
PKG=		SOAPgcc
NAME=		Solaris Application Packaging tools: GNU compiler collection
.else
PKG=		GNUcc
NAME=		GNU compiler collection
.endif

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.gnu.org/pub/gnu/gcc/

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
.if (${OSREL} == "5.6")
CONFIGURE_ENV+=	CFLAGS='-g -O0'
.endif
ALL_TARGET=	bootstrap
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

CLASS_INFO=	info/chill.info info/cpp.info info/g77.info info/gcc.info

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
