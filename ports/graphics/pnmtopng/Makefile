#
# $Id: Makefile,v 1.1 2000/06/02 08:49:35 kunishi Exp $
#

PORTNAME=	pnmtopng
VERSION=	2.37.4
PORTREV=	1

PKG=		OPENpngcv
NAME=		Converter between PNG and portable anymap images
VENDOR=		ftp://swrinde.nde.swri.edu/

MASTER_SITES=	ftp://swrinde.nde.swri.edu/pub/png/applications/

USE_PERL5=	yes
LIB_DEPENDS=	OPENpng:${PORTSDIR}/graphics/png \
		OPENzlib:${PORTSDIR}/devel/zlib
BUILD_DEPENDS=	OPENntpbm:${PORTSDIR}/graphics/netpbm 

MAKE_INSTALL_ARGS+=	INSTDIR=${INSTPREFIX}

post-extract:
	${CP} ${WRKSRC}/Makefile.gcc ${WRKSRC}/Makefile

post-patch:
	${PERL} -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|g; s|%%PREFIX%%|${PREFIX}|g;" ${WRKSRC}/Makefile

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1

.include <port.mk>
