include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_gmake.mk

DISTNAME =	bmake-2.1.14
MASTER_SITES =	ftp://ftp.quick.com.au/pub/sjg/
WRKSRC =	${WRKDIR}/bmake

MAKE_ARGS +=	-f makefile.boot
MAKE_INSTALL_ARGS +=	-f makefile.boot

CORE_TOOLS =	yes

pre-install::
	@${MKDIR} ${WRK_BASEDIR}/bin

post-install::
	@${MKDIR} ${WRK_BASEDIR}/share/doc/bmake
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKDIR}/help/*.html ${WRK_BASEDIR}/share/doc/bmake

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
