include ../../../conf/pkgbuild.conf

include ${PKGBUILD_CCS_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_CCS_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_CCS_MAKEFILE_DIR}/use_gmake.mk

DISTNAME=	make-3.77
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/
WRKSRC=		${WRKDIR}/${DISTNAME}

CONFIGURE_ARGS +=	--program-prefix=g

CORE_TOOLS=	yes

include ${PKGBUILD_CCS_MAKEFILE_DIR}/pkgbuild.mk
