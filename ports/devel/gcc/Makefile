#
# $Id: Makefile,v 1.27 2003/06/23 02:28:52 kunishi Exp $
#

.include <port.pre.mk>

OSREL!=		/usr/bin/uname -r

PORTNAME?=	gcc
VERSION=	3.3
PORTREV?=	1

PKG=		OPUCgcc
NAME=		GNU compiler collection

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/gcc/gcc-${VERSION}/ \
		ftp://ftp.gnu.org/pub/gnu/gcc/gcc-${VERSION}/
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
CONFIGURE_ARGS+=	--disable-nls
.if defined(USE_BINUTILS)
CONFIGURE_ARGS+=	--with-gnu-asm --with-gnu-ld
.else
CONFIGURE_ARGS+=	--with-as=/usr/ccs/bin/as --with-ld=/usr/ccs/bin/ld
.endif
ALL_TARGET=	bootstrap
MAKE_ENV+=	LD_LIBRARY_PATH=${LOCALBASE}/lib LD_RUN_PATH=${LOCALBASE}/lib
PROTOTYPE_SUB+=	GCC_VER=${VERSION}

CLASS_INFO=	info/cpp.info info/cppinternals.info \
		info/g77.info info/gcc.info info/gccint.info info/gcj.info

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++-3
	${MKDIR} ${INSTPREFIX}/include/g++-3/std

.include <port.mk>
