#
# $Id: Makefile,v 1.1 2001/11/13 10:57:18 kunishi Exp $
#

PORTNAME=	gimp-data-extras
VERSION=	1.2.0
PORTREV=	1

PKG=		OPUCgimpx
NAME=		GNU Image Processing Tool Extra Data

MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/v1.2/v1.2.2/

BUILD_DEPENDS=	OPUCgimp:${PORTSDIR}/graphics/gimp
RUN_DEPENDS=	OPUCgimp:${PORTSDIR}/graphics/gimp

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	GIMP_DATA_DIR=${INSTPREFIX}/share/gimp/1.2 \
			GIMP_PLUGIN_DIR=${INSTPREFIX}/lib/gimp/1.2

.include <port.mk>
