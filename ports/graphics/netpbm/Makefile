#
# $Id: Makefile,v 1.8 2000/07/01 11:22:16 kunishi Exp $
#

PORTNAME=	netpbm
VERSION=	9.5
PORTREV=	4

PKG=		OPENntpbm
NAME=	A toolkit for conversion of images between different formats

VENDOR=		SunSITE, http://metalab.unc.edu/
MASTER_SITES=	http://download.sourceforge.net/netpbm/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	GNUmake:${PORTSDIR}/devel/gmake
LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENzlib:${PORTSDIR}/devel/zlib

USE_GMAKE=	yes
MAKEFILE=	GNUmakefile

COMMON_INCLUDE=	pbmplus.h
PBM_INCLUDE=	pbm.h
PGM_INCLUDE=	pgm.h
PNM_INCLUDE=	pnm.h
PPM_INCLUDE=	ppm.h ppmcmap.h ppmdraw.h
SHHOPT_INCLUDE=	shhopt.h

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

pre-build:
	cd ${WRKSRC} && ./stamp-date
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_ENV} ${GMAKE}

pre-install:
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} INSTBASEDIR=${INSTPREFIX} MKDIR="${MKDIR}"

post-install:
	${MKDIR} ${INSTPREFIX}/include
	cd ${WRKSRC} && ${INSTALL_DATA} ${COMMON_INCLUDE} ${INSTPREFIX}/include
	cd ${WRKSRC}/pbm && ${INSTALL_DATA} ${PBM_INCLUDE} ${INSTPREFIX}/include
	cd ${WRKSRC}/pgm && ${INSTALL_DATA} ${PGM_INCLUDE} ${INSTPREFIX}/include
	cd ${WRKSRC}/pnm && ${INSTALL_DATA} ${PNM_INCLUDE} ${INSTPREFIX}/include
	cd ${WRKSRC}/ppm && ${INSTALL_DATA} ${PPM_INCLUDE} ${INSTPREFIX}/include
	cd ${WRKSRC}/shhopt && ${INSTALL_DATA} ${SHHOPT_INCLUDE} ${INSTPREFIX}/include

.include <port.mk>
