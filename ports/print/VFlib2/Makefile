#
# $Id: Makefile,v 1.2 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	VFlib2
VERSION=	2.25.1
PORTREV=	1

PKG=		OPENvflib
NAME=		VFlib, a library for converting vector fonts to bitmap data.

VENDOR=		Hirotsugu Kakugawa <h.kakugawa@computer.org>
MASTER_SITES=	ftp://gull.se.hiroshima-u.ac.jp/pub/TypeHack/

LIB_DEPENDS=	OPENft:${PORTSDIR}/print/freetype

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--with-freetype \
			--with-freetype-includedir=${PREFIX}/include/freetype \
			--with-freetype-libdir=${PREFIX}/lib

EDITABLE_FILES=	share/VFlib/${VERSION}/vfontcap

post-install:
	cd ${WRKSRC}/tools; \
	  ${INSTALL_SCRIPT} fmtest disol kban vfperf vftest ${INSTPREFIX}/bin
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} COPYING COPYING.LIB README.txt.JP_EUC \
	    ${INSTPREFIX}/share/VFlib/${VERSION}; \
	  ${CP} -R jTeX ${INSTPREFIX}/share/VFlib/${VERSION}
	${INSTALL_DATA} ${WRKSRC}/src/VF.h ${INSTPREFIX}/include

.include <port.mk>
