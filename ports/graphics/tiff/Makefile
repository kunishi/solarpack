#
# $Id: Makefile,v 1.6 2000/06/07 05:48:07 kunishi Exp $
#

PORTNAME=	tiff
VERSION=	3.5.5
PORTREV=	1

PKG=		OPENtiff
NAME=		TIFF Software Distribution

VENDOR=		Silicon Graphics, Inc.
DISTNAME=	tiff-v${VERSION}
MASTER_SITES=	http://www.libtiff.org/

LIB_DEPENDS=	OPENzlib:${PORTSDIR}/devel/zlib \
		OPENjpeg:${PORTSDIR}/graphics/jpeg

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--noninteractive \
			--with-ZIP --with-JPEG \
			--with-DIRS_LIBINC=${LOCALBASE}/include \
			--with-DIR_GZLIB=${LOCALBASE}/lib \
			--with-DIR_JPEGLIB=${LOCALBASE}/lib \
			--target=${GNU_HOSTTYPE}
INSTALL=	'${SHELL} ../port/install.sh'

.include <port.mk>
