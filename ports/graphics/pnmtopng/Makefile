#
# $Id: Makefile,v 1.4 2003/02/26 11:01:18 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	pnmtopng
VERSION=	2.37.4
PORTREV=	1

PKG=		OPENpngcv
NAME=		Converter between PNG and portable anymap images
VENDOR=		ftp://swrinde.nde.swri.edu/

MASTER_SITES=	ftp://swrinde.nde.swri.edu/pub/png/applications/

USE_PERL5=	yes
LIB_DEPENDS=	OPUCpng:${PORTSDIR}/graphics/png
BUILD_DEPENDS=	OPENntpbm:${PORTSDIR}/graphics/netpbm 

USE_ZLIB=	yes
MAKE_INSTALL_ARGS+=	INSTDIR=${INSTPREFIX}

post-extract:
	${CP} ${WRKSRC}/Makefile.gcc ${WRKSRC}/Makefile

post-patch:
	${PERL} -pi -e "s|%%LOCALBASE%%|${LOCALBASE}|g; s|%%PREFIX%%|${PREFIX}|g;" ${WRKSRC}/Makefile

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1

.include <port.mk>
