#
# $Id: Makefile,v 1.5 2000/06/01 13:09:52 kunishi Exp $
#

PORTNAME=	netpbm
VERSION=	8.4
PORTREV=	1

PKG=		OPENntpbm
NAME=	A toolkit for conversion of images between different formats

VENDOR=		SunSITE, http://metalab.unc.edu/
MASTER_SITES=	ftp://metalab.unc.edu/pub/Linux/apps/graphics/convert/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENzlib:${PORTSDIR}/devel/zlib

USE_IMAKE=	yes
USE_GMAKE=	yes

PREFIX=		${LOCALBASE}

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

pre-build:
	cd ${WRKSRC} && ./stamp-date
	cd ${WRKSRC}/shhopt && ${GMAKE}

.include <port.mk>
