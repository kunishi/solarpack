#
# $Id: Makefile,v 1.4 2000/05/17 06:42:47 kunishi Exp $
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
		OPENpng:${PORTSDIR}/graphics/png

USE_GMAKE=	yes

PREFIX=		${LOCALBASE}

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

.include <port.mk>
