#
# $Id: Makefile,v 1.7 2000/07/01 10:48:04 kunishi Exp $
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

PREFIX=		${LOCALBASE}

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

pre-build:
	cd ${WRKSRC} && ./stamp-date
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_ENV} ${GMAKE}

pre-install:
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} INSTBASEDIR=${INSTPREFIX} MKDIR="${MKDIR}"

.include <port.mk>
