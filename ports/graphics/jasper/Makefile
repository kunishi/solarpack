#
# $Id: Makefile,v 1.2 2001/11/19 12:14:48 kunishi Exp $
#

PORTNAME=	jasper
VERSION=	1.500.3
PORTREV=	2

PKG=		OPUCjasp
NAME=		a software-based impl. of the codec JPEG-2000 Part-1

MASTER_SITES=	http://www.ece.ubc.ca/~mdadams/jasper/software/

LIB_DEPENDS=	OPUCjpeg:${PORTSDIR}/graphics/jpeg

USE_ZIP=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-shared
USE_GMAKE=	yes
MAKE_ENV+=	LD_RUN_PATH=${LOCALBASE}/lib
MAKE_ARGS+=	LDFLAGS='-L${LOCALBASE}/lib -R${LOCALBASE}/lib'

.include <port.mk>
