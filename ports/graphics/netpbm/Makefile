#
# $Id: Makefile,v 1.2 2000/01/19 11:40:59 kunishi Exp $
#

PKG=		OPENntpbm
NAME=	A toolkit for conversion of images between different formats
VERSION=	8.0
VENDOR=		SunSITE, http://metalab.unc.edu/

DISTNAME=	netpbm-${VERSION}
MASTER_SITES=	ftp://metalab.unc.edu/pub/Linux/apps/graphics/convert/

LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff

WRKSRC=		${WRKDIR}/netpbm
USE_IMAKE=	yes

PREFIX=		${LOCALBASE}

post-patch:
	${MV} ${WRKSRC}/Pbmplus.tmpl ${WRKSRC}/Pbmplus.tmpl.orig
	${SED} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
	  ${WRKSRC}/Pbmplus.tmpl.orig > ${WRKSRC}/Pbmplus.tmpl

.include <port.mk>