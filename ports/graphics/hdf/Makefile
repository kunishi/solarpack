#
# $Id: Makefile,v 1.2 2000/09/27 01:27:46 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	hdf
VERSION=	4.1r3
PORTREV=	1

PKG=		OPENhdf
NAME=		Hierarchical Data Format Library (from NCSA)
VENDOR=		NCSA, UIUC

MASTER_SITES=	ftp://ftp.ncsa.uiuc.edu/HDF/HDF/HDF4.1r3/tar/
DISTNAME=	HDF${VERSION}

BUILD_DEPENDS=	GNUm4:${PORTSDIR}/devel/m4
LIB_DEPENDS=	OPENjpeg:${PORTSDIR}/graphics/jpeg

HAS_CONFIGURE=	yes
USE_GMAKE=	yes
USE_PERL5=	yes
MAKE_ARGS+=	PREFIX=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX}

pre-patch:
	${PERL} -pi -e 's|^M4 = .*|M4 = ${LOCALBASE}/bin/m4|;' \
		-e 's|^PERL = .*|PERL = ${PERL}|;' \
		-e 's|^INSTALL_PROGRAM = .*|INSTALL_PROGRAM = ${INSTALL_PROGRAM}|;' \
		-e 's|^INSTALL_DATA = .*|INSTALL_DATA = ${INSTALL_DATA}|;' \
		-e 's|^CC = .*|CC = ${CC}|;' \
		-e 's|^FC = .*|FC = NONE|;' \
		-e 's|^JPEGINC=.*|JPEGINC=${LOCALBASE}/include|;' \
		-e 's|^JPEGLIB=.*|JPEGLIB=${LOCALBASE}/lib|;' \
		-e 's|^JPEG_LIB = .*|JPEG_LIB = -L${LOCALBASE}/lib -R${LOCALBASE}/lib -ljpeg|;' \
		-e 's|^ZLIBINC=.*|ZLIBINC=${LOCALBASE}/include|;' \
		-e 's|^ZLIBLIB=.*|ZLIBLIB=${LOCALBASE}/lib|;' \
		-e 's|^ZLIB_LIB = .*|ZLIB_LIB = -L${LOCALBASE}/lib -R${LOCALBASE}/lib -lz|;' \
		`${FIND} ${WRKSRC} -name Makefile.in -print`

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/include ${INSTPREFIX}/lib \
		${INSTPREFIX}/man/man1

.include <port.mk>
