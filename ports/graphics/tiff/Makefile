#
# $Id: Makefile,v 1.4 2000/04/26 08:32:46 kunishi Exp $
#

PKG=		OPENtiff
NAME=		TIFF Software Distribution
VERSION=	3.5.5
VENDOR=		Silicon Graphics, Inc.

DISTNAME=	tiff-v${VERSION}
PKGNAME=	tiff-${VERSION}
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

.include <port.mk>
