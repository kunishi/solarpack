include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_imake.mk

DISTNAME=	kterm-6.2.0
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/X/opengroup/contrib/applications/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/FreeBSD/ports/distfiles/
#USE_IMAKE=	yes

post-install::
	@${MKDIR} ${WRK_BASEDIR}/share/kterm
	@${INSTALL} -c -m 644 -o root -g bin ${WRKSRC}/terminfo.kt \
		${WRK_BASEDIR}/share/kterm

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
