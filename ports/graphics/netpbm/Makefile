#
# $Id: Makefile,v 1.6 2000/06/02 08:17:14 kunishi Exp $
#

PORTNAME=	netpbm
VERSION=	8.4
PORTREV=	3

PKG=		OPENntpbm
NAME=	A toolkit for conversion of images between different formats

VENDOR=		SunSITE, http://metalab.unc.edu/
MASTER_SITES=	ftp://metalab.unc.edu/pub/Linux/apps/graphics/convert/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	GNUmake:${PORTSDIR}/devel/gmake
LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENzlib:${PORTSDIR}/devel/zlib

USE_IMAKE=	yes

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
