#
# $Id: Makefile,v 1.4 2000/09/27 01:27:46 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gimp
VERSION=	1.1.25
PORTREV=	1

PKG=		GNUgimp
NAME=		GNU Image Manipulation Program, beta release
VENDOR=		${VENDOR_GNU}

MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/unstable/v${VERSION}/ \
		ftp://ftp.insync.net/pub/mirrors/ftp.gimp.org/gimp/unstable/v${VERSION}/ \
		ftp://ftp.gimp.org/pub/gimp/unstable/old/v${VERSION}/

BUILD_DEPENDS=	OPENmpglb:${PORTSDIR}/graphics/mpeg-lib
LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm \
		OPENaalib:${PORTSDIR}/graphics/aalib \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		GNUgtk:${PORTSDIR}/x11/gtk \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENtiff:${PORTSDIR}/graphics/tiff

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--disable-perl
CONFIGURE_ENV+=	LD_LIBRARY_PATH=${LOCALBASE}/lib

.include <port.mk>
