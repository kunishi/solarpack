#
# $Id: Makefile,v 1.6 1999/08/27 11:48:47 kunishi Exp $
#

PKG=		GNUlstdc+
NAME=		GNU standard C++ library
VERSION=	2.8.1.1
VENDOR=		${VENDOR_GNU}

DISTNAME=	libstdc++-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/libstdc++/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/libstdc++/

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	CXX=${PKGBUILDDIR}/bin/c++
USE_GMAKE=	yes

pre-install:
	${MKDIR} ${INSTPREFIX}/include/g++
	${MKDIR} ${INSTPREFIX}/include/g++/std
	${MKDIR} ${INSTPREFIX}/lib
	${MKDIR} ${INSTPREFIX}/${GNU_HOSTTYPE}/include
	${MKDIR} ${INSTPREFIX}/${GNU_HOSTTYPE}/lib

.include <port.mk>
