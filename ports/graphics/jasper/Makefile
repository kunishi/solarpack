#
# $Id: Makefile,v 1.1 2001/11/12 12:26:43 kunishi Exp $
#

PORTNAME=	jasper
VERSION=	1.500.3
PORTREV=	1

PKG=		OPUCjasp
NAME=		a software-based impl. of the codec JPEG-2000 Part-1

MASTER_SITES=	http://www.ece.ubc.ca/~mdadams/jasper/software/

LIB_DEPENDS=	OPENjpeg:${PORTSDIR}/graphics/jpeg

USE_ZIP=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-shared
USE_GMAKE=	yes
MAKE_ENV+=	LD_RUN_PATH=${LOCALBASE}/lib
MAKE_ARGS+=	LDFLAGS='-L${LOCALBASE}/lib -R${LOCALBASE}/lib'

.include <port.mk>
