#
# $Id: Makefile,v 1.1 2001/11/30 12:38:25 kunishi Exp $
#

PORTNAME=	wv
VERSION=	0.7.0
PORTREV=	1

PKG=		OPUCwv
NAME=		A library and executables which allow access to Microsoft Word files

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	wvware

LIB_DEPENDS=	OPUClbwmf:${PORTSDIR}/graphics/libwmf \
		OPUCpng:${PORTSDIR}/graphics/png \
		OPUCfrty2:${PORTSDIR}/print/freetype2 \
		OPUCiconv:${PORTSDIR}/converters/libiconv \
		GNUglib:${PORTSDIR}/devel/glib
BUILD_DEPENDS=	OPUCimgmg:${PORTSDIR}/graphics/ImageMagick
RUN_DEPENDS=	OPUCimgmg:${PORTSDIR}/graphics/ImageMagick

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-libiconv=${LOCALBASE}/lib
USE_GMAKE=	yes
USE_ZLIB=	yes

.include <port.mk>
