#
# $Id: Makefile,v 1.6 1999/06/05 05:58:47 kunishi Exp $
#

PKG=		GNUtxinf
NAME=		GNU texinfo tools
VERSION=	3.12
VENDOR=		${VENDOR_GNU}

DISTNAME=	texinfo-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/texinfo/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/texinfo/
MAKE_ENV+=	LD_LIBRARY_PATH=${PREFIX}/lib LD_RUN_PATH=${PREFIX}/lib

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CORE_TOOLS=	yes

post-install:
	${MKDIR} ${WRKDIR}${PREFIX}/share/examples/texinfo
	${INSTALL} -c -m 0644 ${WRKSRC}/dir-example \
	    ${WRKDIR}${PREFIX}/share/examples/texinfo

.include <port.mk>
