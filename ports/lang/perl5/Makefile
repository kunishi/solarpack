include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/has_configure.mk

DISTNAME =	perl5.005_03
PKGNAME =	perl-5.00503
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/lang/perl/CPAN/src/5.0/

CONFIGURE =	${WRKSRC}/Configure
CONFIGURE_ARGS =	-sde -Dprefix=${PREFIX} -Dcc=${CC}
PKGMK_ARGS +=	-b ${PREFIX}

CORE_TOOLS =	yes

test::
	@(cd ${WRKSRC}; ${MAKE} test)

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
