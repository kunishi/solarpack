#
# $Id: Makefile,v 1.12 2001/12/01 06:15:40 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tiff
VERSION=	3.5.7
PORTREV=	3

PKG=		OPUCtiff
NAME=		TIFF Software Distribution

VENDOR=		Silicon Graphics, Inc.
DISTNAME=	${PORTNAME}-v${VERSION}
MASTER_SITES=	ftp://ftp.remotesensing.org/pub/libtiff/

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
			--with-DSO=SOLARIS \
			--with-DSOSUF=so.3 \
			--with-DSOSUF_VERSION=so.3 \
			--with-LIBCOPTS='-fPIC -DPIC' \
			--target=${GNU_HOSTTYPE}

post-install:
	${LN} -sf libtiff.so.3 ${INSTPREFIX}/lib/libtiff.so

.include <port.mk>
