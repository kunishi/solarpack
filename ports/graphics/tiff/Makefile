#
# $Id: Makefile,v 1.5 2000/05/17 06:42:47 kunishi Exp $
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

.include <port.mk>
