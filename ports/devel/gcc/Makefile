#
# $Id: Makefile,v 1.22 2001/04/14 04:14:46 kunishi Exp $
#

.include <port.pre.mk>

OSREL!=		/usr/bin/uname -r

PORTNAME?=	gcc
VERSION=	2.95.3
PORTREV?=	1

PKG=		GNUcc
NAME=		GNU compiler collection

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/ \
		ftp://ftp.gnu.org/pub/gnu/gcc/
DISTNAME=	gcc-${VERSION}

.if defined(USE_BINUTILS)
BUILD_DEPENDS+=	GNUbinut:${PORTSDIR}/devel/binutils
RUN_DEPENDS+=	GNUbinut:${PORTSDIR}/devel/binutils
.endif

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
.if (${OSREL} == "5.6")
CONFIGURE_ENV+=	CFLAGS='-g -O0'
.endif
.if defined(USE_BINUTILS)
CONFIGURE_ARGS+=	--with-gnu-asm --with-gnu-ld
.endif
ALL_TARGET=	bootstrap
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

CLASS_INFO=	info/chill.info info/cpp.info info/g77.info info/gcc.info

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
