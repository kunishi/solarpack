#
# $Id: Makefile,v 1.10 2001/11/19 12:04:15 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tiff
VERSION=	3.5.6.b
PORTREV=	2

PKG=		OPUCtiff
NAME=		TIFF Software Distribution

VENDOR=		Silicon Graphics, Inc.
DISTNAME=	tiff-v3.5.6-beta
MASTER_SITES=	http://www.libtiff.org/

LIB_DEPENDS=	OPUCjpeg:${PORTSDIR}/graphics/jpeg

USE_ZLIB=	yes
HAS_CONFIGURE=	yes
CONFIGURE_ENV+=		LOCALBASE=${LOCALBASE}
CONFIGURE_ARGS+=	--noninteractive \
			--with-ZIP --with-JPEG \
			--with-DIRS_LIBINC=${LOCALBASE}/include \
			--with-DIR_GZLIB=${LOCALBASE}/lib \
			--with-DIR_JPEGLIB=${LOCALBASE}/lib \
			--with-INSTALL='${SHELL} ${WRKSRC}/port/install.sh -root ${WRKDIR}' \
			--target=${GNU_HOSTTYPE}

.include <port.mk>
