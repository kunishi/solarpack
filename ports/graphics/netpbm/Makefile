#
# $Id: Makefile,v 1.11 2001/11/08 15:37:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	netpbm
VERSION=	9.20
PORTREV=	4

PKG=		OPUCntpbm
NAME=	A toolkit for conversion of images between different formats

VENDOR=		SunSITE, http://metalab.unc.edu/
MASTER_SITES=	http://download.sourceforge.net/netpbm/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	GNUmake:${PORTSDIR}/devel/gmake \
		GNUflex:${PORTSDIR}/devel/flex
LIB_DEPENDS=	OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPUCpng:${PORTSDIR}/graphics/png

USE_GMAKE=	yes
HAS_CONFIGURE=	yes
IS_INTERACTIVE=	yes
USE_ZLIB=	yes
MAKEFILE=	GNUmakefile

pre-build:
	cd ${WRKSRC} && ./stamp-date
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_ENV} ${GMAKE}

pre-install:
	cd ${WRKSRC}/shhopt && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} install ${MAKE_INSTALL_ARGS} INSTBASEDIR=${INSTPREFIX} MKDIR="${MKDIR}"

.include <port.mk>
