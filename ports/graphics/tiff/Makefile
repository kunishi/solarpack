#
# $Id: Makefile,v 1.3 2000/01/19 04:44:50 kunishi Exp $
#

PKG=		OPENtiff
NAME=		TIFF Software Distribution
VERSION=	3.5.4
VENDOR=		Silicon Graphics, Inc.

DISTNAME=	tiff-v3.5.4
PKGNAME=	tiff-${VERSION}
MASTER_SITES=	ftp://ftp.onshore.com/pub/libtiff/ \
		http://www.libtiff.org/

LIB_DEPENDS=	OPENzlib:${PORTSDIR}/devel/zlib \
		OPENjpeg:${PORTSDIR}/graphics/jpeg

HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--noninteractive \
			--with-ZIP --with-JPEG \
			--with-DIRS_LIBINC=${LOCALBASE}/include \
			--with-DIR_GZLIB=${LOCALBASE}/lib \
			--with-DIR_JPEGLIB=${LOCALBASE}/lib

.include <port.mk>
