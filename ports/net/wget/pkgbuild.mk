CC=		/usr/local/bin/gcc
ECHO=		/usr/bin/echo
GMAKE=		/usr/local/bin/gmake
GTAR=		/usr/local/bin/gtar
GZIP=		/usr/local/bin/gzip
INSTALL=	/usr/ucb/install
MAKE=		/usr/ccs/bin/make
MKDIR=		/usr/bin/mkdir -p
PATCH=		/usr/local/bin/patch
PKGADD=		/usr/sbin/pkgadd
PKGMK=		/usr/bin/pkgmk
PKGTRANS=	/usr/bin/pkgtrans
PWD=		/usr/bin/pwd
RM=		/usr/bin/rm
SED=		/usr/bin/sed
TOUCH=		/usr/bin/touch
UNAME=		/usr/bin/uname
WGET=		/usr/local/bin/wget

ifeq ($(USE_GMAKE),yes)
MAKE=		/usr/local/bin/gmake
endif

ECHO_MSG=	${ECHO}
PKGMAKE=	${GMAKE} -s

LOCALBASE?=	/usr/local
X11BASE?=	/usr/openwin

ifeq ($(USE_IMAKE),yes)
USE_X_PREFIX=	yes
XMKMF=		${X11BASE}/bin/xmkmf
XMKMF_ARGS+=	-a
endif

ifeq ($(USE_X_PREFIX),yes)
PREFIX=		${X11BASE}
else
PREFIX=		${LOCALBASE}
endif

ifeq ($(GNU_CONFIGURE),yes)
CONFIGURE=	${WRKSRC}/configure
CONFIGURE_ARGS+=	--prefix=${PREFIX}
endif

CURDIR=		$(shell ${PWD})
DISTDIR?=	/usr/local/work
PATCHDIR?=	${CURDIR}/patches
WRKDIR?=	${CURDIR}/work
WRKSRC?=	${WRKDIR}/${PKGNAME}
WRK_BASEDIR?=	${WRKDIR}${PREFIX}
SPOOLDIR=	${WRKDIR}/spool
PKGDIR=	${CURDIR}/pkg

EXTRACT_SUFX=	.tar.gz

ARCH=		$(shell ${UNAME} -p)

EXTRACT_COOKIE?=	${WRKDIR}/.extract_done
PATCH_COOKIE?=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE?=	${WRKDIR}/.configure_done
BUILD_COOKIE?=		${WRKDIR}/.build_done
INSTALL_COOKIE?=	${WRKDIR}/.install_done
PACKAGE_COOKIE?=	${WRKDIR}/.package_done
INSTPKG_COOKIE?=	${WRKDIR}/.instpkg_done
RELEASE_COOKIE?=	${WRKDIR}/.release_done

.PHONY: extract patch configure build prepackage package clean pkgclean \
	post-install install-package release-package

all:	build

extract:	${EXTRACT_COOKIE}
patch:		${PATCH_COOKIE}
configure:	${CONFIGURE_COOKIE}
build:		${BUILD_COOKIE}
install:	${INSTALL_COOKIE}
package:	${PACKAGE_COOKIE}
install-package:	${INSTPKG_COOKIE}
release:	${RELEASE_COOKIE}

${EXTRACT_COOKIE}:
	${MKDIR} ${WRKDIR}
	cd ${WRKDIR} && ${GTAR} xzf ${DISTDIR}/${PKGNAME}${EXTRACT_SUFX}
	@${TOUCH} $@

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	@${PKGMAKE} extract
	# nothing done with patch
	@${TOUCH} $@

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	@${PKGMAKE} patch
ifeq ($(USE_IMAKE),yes)
	cd ${WRKSRC} && ${XMKMF} ${XMKMF_ARGS}
else
	cd ${WRKSRC} && ${CONFIGURE} ${CONFIGURE_ARGS}
endif
	@${TOUCH} $@

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	@${PKGMAKE} configure
	cd ${WRKSRC} && ${MAKE}
	@${TOUCH} $@

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	@${PKGMAKE} build
	cd ${WRKSRC} && ${MAKE} install prefix=${WRK_BASEDIR}
	@${PKGMAKE} post-install
	@${TOUCH} $@

${PACKAGE_COOKIE}:	${INSTALL_COOKIE}
	@${PKGMAKE} install
	${SED} -e "s?%%PKGDIR%%?${PKGDIR}?" \
	    -e "s?%%WRK_BASEDIR%%?${WRK_BASEDIR}?" \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype
	${SED} -e "s?%%ARCH%%?${ARCH}?" \
	    -e "s?%%BASEDIR%%?${BASEDIR}?" ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo
	${MKDIR} ${SPOOLDIR}
	${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype
	${PKGTRANS} -s ${SPOOLDIR} ${CURDIR}/${PKGNAME} all
	@${TOUCH} $@

${INSTPKG_COOKIE}:	${PACKAGE_COOKIE}
	${PKGADD} -d ${CURDIR}/${PKGNAME} all
	@${TOUCH} $@

${RELEASE_COOKIE}:	${PACKAGE_COOKIE}
	${GZIP} -9 ${PKGNAME}
	@${TOUCH} $@

clean:
	@${RM} -rf ${WRKDIR} ${PKGDIR}/pkginfo ${PKGDIR}/prototype

pkgclean:	clean
	@${RM} -rf ${CURDIR}/${PKGNAME}.gz
