include ../../include/pre.mk

DISTNAME=	texinfo-3.12
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/texinfo/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/texinfo/
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAKE_ENV+=	LD_LIBRARY_PATH=${PREFIX}/lib LD_RUN_PATH=${PREFIX}/lib

post-install:
	${MKDIR} ${WRKDIR}${PREFIX}/share/examples/texinfo
	${INSTALL} -c -m 0644 ${WRKSRC}/dir-example \
	    ${WRKDIR}${PREFIX}/share/examples/texinfo

include ../../include/pkgbuild.mk