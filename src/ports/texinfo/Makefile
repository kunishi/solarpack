#
# $Id: Makefile,v 1.5 1999/06/03 12:34:38 kunishi Exp $
#

DISTNAME=	texinfo-3.12
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
