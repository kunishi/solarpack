#
# $Id: Makefile,v 1.3 2000/09/27 01:27:41 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gcc
VERSION=	2.7.2.3
PORTREV=	1

PKG=		GNUcc27
NAME=		GNU C Compiler, Ver. ${VERSION}
VENDOR=		${VENDOR_GNU}

MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/gcc/ \
		ftp://ring.nacsis.ac.jp/pub/GNU/libg++/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} libg++-2.7.2${EXTRACT_SUFX}

GCC_VER=	2.7.2.3
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-gxx-include-dir=${PREFIX}/lib/gcc-lib/${GNU_HOSTTYPE}/${VERSION}/include/g++
USE_GMAKE=	yes
ALL_TARGET=	bootstrap
PROTOTYPE_SUB=	GCC_VER=${GCC_VER}
PROTOTYPE_IN=	${PKGDIR}/prototype.in.${ARCH}

XGCC=	"${WRKSRC}/stage2/xgcc -B${WRKSRC}/stage2/"

post-build:
	cd ${WRKDIR}/libg++-2.7.2; env CC=${XGCC} CXX=${XGCC} ./configure ${CONFIGURE_ARGS}
	cd ${WRKDIR}/libg++-2.7.2; ${ENV} ${MAKE_ENV} ${GMAKE} CC=${XGCC} CXX=${XGCC}

post-install:
	cd ${WRKDIR}/libg++-2.7.2; ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} CC=${XGCC} CXX=${XGCC} prefix=${INSTPREFIX} install
	${RM} -f ${INSTPREFIX}/bin/c++ \
	  ${INSTPREFIX}/bin/genclass ${INSTPREFIX}/bin/gperf \
	  ${INSTPREFIX}/bin/protoize ${INSTPREFIX}/bin/unprotoize \
	  ${INSTPREFIX}/man/man1/gperf.1 ${INSTPREFIX}/man/man1/configure.1
	${RM} -f ${INSTPREFIX}/lib/gcc-lib/${GNU_HOSTTYPE}/${GCC_VER}/include/japanese
	${RM} -rf ${INSTPREFIX}/${GNU_HOSTTYPE}
	${MV} -f ${INSTPREFIX}/bin/gcc ${INSTPREFIX}/bin/gcc27
	${MV} -f ${INSTPREFIX}/bin/g++ ${INSTPREFIX}/bin/g++27
	${MV} -f ${INSTPREFIX}/bin/${GNU_HOSTTYPE}-gcc ${INSTPREFIX}/bin/${GNU_HOSTTYPE}-gcc27
	${MV} -f ${INSTPREFIX}/man/man1/cccp.1 ${INSTPREFIX}/man/man1/cccp27.1
	${MV} -f ${INSTPREFIX}/man/man1/g++.1 ${INSTPREFIX}/man/man1/g++27.1
	${MV} -f ${INSTPREFIX}/man/man1/gcc.1 ${INSTPREFIX}/man/man1/gcc27.1
	${RM} -rf ${INSTPREFIX}/lib/gcc-lib/${GNU_HOSTTYPE}/${GCC_VER}/g++-include
	${MV} ${INSTPREFIX}/lib/libg++.a ${INSTPREFIX}/lib/libiberty.a \
	  ${INSTPREFIX}/lib/libstdc++.a ${INSTPREFIX}/lib/g++-include \
	  ${INSTPREFIX}/info \
	  ${INSTPREFIX}/lib/gcc-lib/${GNU_HOSTTYPE}/${GCC_VER}

.include <port.mk>
