#
# $Id: Makefile,v 1.1 2000/01/19 11:36:01 kunishi Exp $
#

PKG=		OPENvflib
NAME=		VFlib, a library for converting vector fonts to bitmap data.
VERSION=	2.25.1
VENDOR=		Hirotsugu Kakugawa <h.kakugawa@computer.org>

DISTNAME=	VFlib2-${VERSION}
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
