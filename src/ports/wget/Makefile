include ../../../conf/pkgbuild.conf

include ${PKGBUILD_CCS_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_CCS_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_CCS_MAKEFILE_DIR}/use_gmake.mk

DISTNAME=	wget-1.5.3
MASTER_SITES=	ftp://psi.c.oka-pu.ac.jp/pub/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/wget/

CORE_TOOLS=	yes

post-install::
	${MKDIR} ${WRK_BASEDIR}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${WRK_BASEDIR}/share/examples/wget/sample.wgetrc

include ${PKGBUILD_CCS_MAKEFILE_DIR}/pkgbuild.mk
