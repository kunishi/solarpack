#
# $Id: Makefile,v 1.3 2000/04/26 08:32:46 kunishi Exp $
#

PKG=		OPENntpbm
NAME=	A toolkit for conversion of images between different formats
VERSION=	8.4
VENDOR=		SunSITE, http://metalab.unc.edu/

DISTNAME=	netpbm-${VERSION}
MASTER_SITES=	ftp://metalab.unc.edu/pub/Linux/apps/graphics/convert/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENpng:${PORTSDIR}/graphics/png

#WRKSRC=		${WRKDIR}/netpbm
#USE_IMAKE=	yes
USE_GMAKE=	yes

PREFIX=		${LOCALBASE}

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

.include <port.mk>
