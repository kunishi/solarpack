#
# $Id: Makefile,v 1.8 2000/09/27 01:27:42 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	libstdc++
VERSION=	2.8.1.1
PORTREV=	1

PKG=		GNUlstdc+
NAME=		GNU standard C++ library

VENDOR=		${VENDOR_GNU}
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
