#
# $Id: Makefile,v 1.9 2000/09/27 01:27:51 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tiff
VERSION=	3.5.5
PORTREV=	2

PKG=		OPENtiff
NAME=		TIFF Software Distribution

VENDOR=		Silicon Graphics, Inc.
DISTNAME=	tiff-v${VERSION}
MASTER_SITES=	http://www.libtiff.org/

LIB_DEPENDS=	OPENjpeg:${PORTSDIR}/graphics/jpeg

USE_ZLIB=	yes
HAS_CONFIGURE=	yes
CONFIGURE_ARGS+=	--noninteractive \
			--with-ZIP --with-JPEG \
			--with-DIRS_LIBINC=${LOCALBASE}/include \
			--with-DIR_GZLIB=${LOCALBASE}/lib \
			--with-DIR_JPEGLIB=${LOCALBASE}/lib \
			--target=${GNU_HOSTTYPE}
INSTALL=	'${SHELL} ../port/install.sh'

post-install:
	${LN} -sf libtiff.so.3 ${INSTPREFIX}/lib/libtiff.so

.include <port.mk>
