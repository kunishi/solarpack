include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_gmake.mk

DISTNAME=	texinfo-3.12
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/texinfo/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/texinfo/
MAKE_ENV +=	LD_LIBRARY_PATH=${PREFIX}/lib LD_RUN_PATH=${PREFIX}/lib

CORE_TOOLS=	yes

post-install::
	${MKDIR} ${WRKDIR}${PREFIX}/share/examples/texinfo
	${INSTALL} -c -m 0644 ${WRKSRC}/dir-example \
	    ${WRKDIR}${PREFIX}/share/examples/texinfo

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
