#
# $Id: Makefile,v 1.6 2001/11/12 13:43:31 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gimp
VERSION=	1.2.2
PORTREV=	2

PKG=		OPUCgimp
NAME=		GNU Image Manipulation Program, beta release
VENDOR=		${VENDOR_GNU}

MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/v1.2/v${VERSION}/ \
		ftp://ftp.insync.net/pub/mirrors/ftp.gimp.org/gimp/v1.2/v${VERSION}/ \
		ftp://ftp.gimp.org/pub/gimp/v1.2/old/v${VERSION}/

BUILD_DEPENDS=	OPUCmpglb:${PORTSDIR}/graphics/mpeg-lib
LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm \
		OPENaalib:${PORTSDIR}/graphics/aalib \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		GNUgtk:${PORTSDIR}/x11/gtk \
		OPUCpng:${PORTSDIR}/graphics/png \
		OPENtiff:${PORTSDIR}/graphics/tiff

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--disable-perl
CONFIGURE_ENV+=	LD_LIBRARY_PATH=${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
MAKE_ARGS+=	CFLAGS='-g -O0'

.include <port.mk>
