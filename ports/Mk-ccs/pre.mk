CC=		/usr/local/bin/gcc
ECHO=		/usr/bin/echo
ENV=		/usr/bin/env
GMAKE=		/usr/local/bin/gmake
GTAR=		/usr/local/bin/gtar
GZCAT=		/usr/local/bin/gzip -cd
GZIP=		/usr/local/bin/gzip
INSTALL=	/usr/ucb/install
MAKE=		/usr/ccs/bin/make
MV=		/usr/bin/mv
MKDIR=		/usr/bin/mkdir -p
PATCH=		/usr/local/bin/patch
PKGADD=		/usr/sbin/pkgadd
PKGMK=		/usr/bin/pkgmk -o
PKGPROTO=	/usr/bin/pkgproto
PKGTRANS=	/usr/bin/pkgtrans -o
PWD=		/usr/bin/pwd
RM=		/usr/bin/rm
SED=		/usr/bin/sed
TOUCH=		/usr/bin/touch
UNAME=		/usr/bin/uname
WGET=		/usr/local/bin/wget

ECHO_MSG=	${ECHO}
PKGMAKE=	${GMAKE}
POSTPROTO=	${CURDIR}/../../tools/postproto.sh

ARCH=		$(shell ${UNAME} -p)
OSREL=		$(shell ${UNAME} -r)
ifeq ($(ARCH),sparc)
GNU_HOSTTYPE=	${ARCH}-sun-solaris$(shell ${UNAME} -r | ${SED} 's/^5/2/')
else
GNU_HOSTTYPE=	${ARCH}--solaris$(shell ${UNAME} -r | ${SED} 's/^5/2/')
endif

LOCALBASE=	/usr/local
X11BASE=	/usr/openwin

CURDIR=		$(shell ${PWD})
DISTDIR=	/opt/local/pkgbuild/distfiles
FILESDIR=	${CURDIR}/files
PATCHDIR=	${CURDIR}/patches
WRKDIR=		${CURDIR}/work
WRKSRC=		${WRKDIR}/${DISTNAME}
WRK_BASEDIR=	${WRKDIR}${PREFIX}
SPOOLDIR=	${WRKDIR}/spool
PKGDIR=		${CURDIR}/pkg

EXTRACT_SUFX=	.tar.gz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
PKGNAME=	${DISTNAME}
EXTRACT_ONLY=	${DISTFILES}

PATCH_STRIP=	-p0
PATCH_DIST_STRIP=	-p0
PATCH_ARGS=	-d ${WRKSRC} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS=	-d ${WRKSRC} --forward --quiet -E ${PATCH_DIST_STRIP}

CONFIGURE_ENV=	CC=${CC} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib

INSTALL_TARGET=	install

FETCH_COOKIE=		${WRKDIR}/.fetch_done
EXTRACT_COOKIE=		${WRKDIR}/.extract_done
PATCH_COOKIE=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE=	${WRKDIR}/.configure_done
BUILD_COOKIE=		${WRKDIR}/.build_done
INSTALL_COOKIE=		${WRKDIR}/.install_done
PACKAGE_COOKIE=		${WRKDIR}/.package_done
INSTPKG_COOKIE=		${WRKDIR}/.instpkg_done
RELEASE_COOKIE=		${WRKDIR}/.release_done

include ../../include/pkgbuild.conf

all:	build
