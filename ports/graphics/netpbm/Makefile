#
# $Id: Makefile,v 1.12 2001/11/19 12:54:21 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	netpbm
VERSION=	9.20
PORTREV=	5

PKG=		OPUCntpbm
NAME=	A toolkit for conversion of images between different formats

VENDOR=		SunSITE, http://metalab.unc.edu/
MASTER_SITES=	http://download.sourceforge.net/netpbm/
EXTRACT_SUFX=	.tgz

BUILD_DEPENDS=	GNUmake:${PORTSDIR}/devel/gmake \
		GNUflex:${PORTSDIR}/devel/flex
LIB_DEPENDS=	OPUCtiff:${PORTSDIR}/graphics/tiff \
		OPUCjpeg:${PORTSDIR}/graphics/jpeg \
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
