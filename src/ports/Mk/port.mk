#
# $Id: port.mk,v 1.5 1999/05/19 08:51:10 kunishi Exp $
#

.include "/opt/local/pkgbuild/conf/pkgbuild.conf"

CCSMAKE=	/usr/ccs/bin/make
ECHO=		/usr/bin/echo
ENV=		/usr/bin/env
GMAKE=		/usr/local/bin/gmake
GTAR=		/usr/local/bin/gtar
GZCAT=		/usr/local/bin/gzip -cd
GZIP=		/usr/local/bin/gzip
INSTALL=	/usr/ucb/install
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
POSTPROTO=	${PKGBUILDDIR}/tools/postproto.sh

.if !defined(ARCH)
ARCH!=		/usr/bin/mach
.endif
.if !defined(OSREL)
OSREL!=		/usr/bin/uname -r
.endif
.if !defined(OSREL_SOLARIS)
OSREL_SOLARIS!=	/usr/bin/uname -r | /usr/bin/sed 's/^5/2/'
.endif

.if (${ARCH} == "sparc")
GNU_HOSTTYPE?=	${ARCH}-sun-solaris${OSREL_SOLARIS}
.elif (${ARCH} == "i386")
GNU_HOSTTYPE?=	${ARCH}--solaris${OSREL_SOLARIS}
.endif

LOCALBASE=	/usr/local
X11BASE=	/usr/openwin
PREFIX?=	${LOCALBASE}

DISTDIR=	${PKGBUILDDIR}/distfiles
TOOLSDIR= 	${PKGBUILDDIR}/tools
FILESDIR=	${.CURDIR}/files
PATCHDIR=	${.CURDIR}/patches
WRKDIR=		${.CURDIR}/work
WRKSRC?=	${WRKDIR}/${DISTNAME}
WRK_BASEDIR?=	${WRKDIR}${PREFIX}
SPOOLDIR?=	${WRKDIR}/spool
PKGDIR=		${.CURDIR}/pkg

EXTRACT_SUFX?=	.tar.gz
DISTFILES?=	${DISTNAME}${EXTRACT_SUFX}
PKGNAME?=	${DISTNAME}
EXTRACT_ONLY?=	${DISTFILES}

PATCH_STRIP?=	-p0
PATCH_DIST_STRIP?=	-p0
PATCH_ARGS=	-d ${WRKSRC} --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_ARGS=	-d ${WRKSRC} --forward --quiet -E ${PATCH_DIST_STRIP}

CONFIGURE_ENV=	CC=${CC} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib

INSTALL_TARGET?=	install

EXTRACT_COOKIE=		${WRKDIR}/.extract_done
PATCH_COOKIE=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE=	${WRKDIR}/.configure_done
BUILD_COOKIE=		${WRKDIR}/.build_done
INSTALL_COOKIE=		${WRKDIR}/.install_done
PACKAGE_COOKIE=		${WRKDIR}/.package_done
INSTPKG_COOKIE=		${WRKDIR}/.instpkg_done
RELEASE_COOKIE=		${WRKDIR}/.release_done

MAKE_ENV+=	PREFIX=${PREFIX}

.if defined(GNU_CONFIGURE)
HAS_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}
MAKE_ENV+=		prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${WRK_BASEDIR}
.endif

.if defined(HAS_CONFIGURE)
CONFIGURE?=	${WRKSRC}/configure
.endif

.if defined(USE_GMAKE)
MAKE_ENV+=	MAKE=${GMAKE}
.endif

.if defined(USE_IMAKE)
USE_X_PREFIX=	yes
CONFIGURE=	${X11BASE}/bin/xmkmf
CONFIGURE_ARGS+=	-a
MAKE_ARGS+=	DESTDIR=${PREFIX}
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR}
.if !defined(NO_INSTALL_MAN)
INSTALL_TARGET+=	install.man
.endif
.endif

.if defined(USE_X_PREFIX)
PREFIX=		${X11BASE}
.endif

### rule definitions

.MAIN:	all
all:	build

extract:	${EXTRACT_COOKIE}
patch:		${PATCH_COOKIE}
configure:	${CONFIGURE_COOKIE}
build:		${BUILD_COOKIE}
install:	${INSTALL_COOKIE}
package:	${PACKAGE_COOKIE}
install-package:	${INSTPKG_COOKIE}
release:	${RELEASE_COOKIE}

###

fetch:
	@${ECHO_MSG} "===> Fetching for ${PKGNAME}"
.if target(pre-fetch)
	@${MAKE} pre-fetch
.endif
	@${MAKE} do-fetch
.if target(post-fetch)
	@${MAKE} post-fetch
.endif

${EXTRACT_COOKIE}:
	@${MAKE} fetch
	@${ECHO_MSG} "===> Extracting for ${PKGNAME}"
.if target(pre-extract)
	@${MAKE} pre-extract
.endif
	@${MAKE} do-extract
.if target(post-extract)
	@${MAKE} post-extract
.endif
	@${TOUCH} $@

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	@${MAKE} extract
	@${ECHO_MSG} "===> Patching for ${PKGNAME}"
.if target(pre-patch)
	@${MAKE} pre-patch
.endif
	@${MAKE} do-patch
.if target(post-patch)
	@${MAKE} post-patch
.endif
	@${TOUCH} $@

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	@${MAKE} patch
	@${ECHO_MSG} "===> Configuring for ${PKGNAME}"
.if target(pre-configure)
	@${MAKE} pre-configure
.endif
	@${MAKE} do-configure
.if target(post-configure)
	@${MAKE} post-configure
.endif
	@${TOUCH} $@

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	@${MAKE} configure
.if defined(NO_BUILD)
	@${ECHO_MSG} "===> No action for the target build."
.else
	@${ECHO_MSG} "===> Building for ${PKGNAME}"
.if target(pre-build)
	@${MAKE} pre-build
.endif
	@${MAKE} do-build
.if target(post-build)
	@${MAKE} post-build
.endif
.endif
	@${TOUCH} $@

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	@${MAKE} build
.if defined(NO_INSTALL)
	@${ECHO_MSG} "===> No action for target install."
.else
	@${ECHO_MSG} "===> Installing temporarily for ${PKGNAME}"
.if target(pre-install)
	@${MAKE} pre-install
.endif
	@${MAKE} do-install
.if target(post-install)
	@${MAKE} post-install
.endif
.endif
	@${TOUCH} $@

${PACKAGE_COOKIE}:	${INSTALL_COOKIE}
	@${MAKE} install
	@${ECHO_MSG} "===> Building package for ${PKGNAME}"
.if target(pre-package)
	@${MAKE} pre-package
.endif
	@${MAKE} do-package
.if target(post-package)
	@${MAKE} post-package
.endif
	@${TOUCH} $@

${INSTPKG_COOKIE}:	${PACKAGE_COOKIE}
	@${MAKE} package
	@${ECHO_MSG} "===> Installing package for ${PKGNAME}"
.if target(pre-install-package)
	@${MAKE} pre-install-package
.endif
	@${MAKE} do-install-package
.if target(post-install-package)
	@${MAKE} post-install-package
.endif
	@${TOUCH} $@

${RELEASE_COOKIE}:	${PACKAGE_COOKIE}
	@${MAKE} package
	@${ECHO_MSG} "===> Releasing package for ${PKGNAME}"
.if target(pre-release)
	@${MAKE} pre-release
.endif
	@${MAKE} do-release
.if target(post-release)
	@${MAKE} post-release
.endif
	@${TOUCH} $@

###

.if !target(do-fetch)
	@(cd ${DISTDIR}; \
	 for file in ${DISTFILES}; do \
		if [ ! -f $$file ]; then \
			for site in ${MASTER_SITES}; do \
				${ECHO_MSG} ">> fetching $${site}$${file}..."; \
				if ${WGET} $${site}$${file}; then \
					continue 2; \
				fi \
			done; \
		fi \
	done)
.if defined(PATCHFILES)
	@(cd ${DISTDIR}; \
	 for file in ${PATCHFILES}; do \
		if [ ! -f $${file} ]; then \
			for site in ${PATCH_SITES}; do \
				${ECHO_MSG} ">> fetching $${site}$${file}..."; \
				if ${WGET} $${site}$${file}; then \
					continue 2; \
				fi \
			done; \
		fi \
	 done)
.endif
.endif

.if !target(do-extract)
do-extract:
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@for file in ${EXTRACT_ONLY}; do \
	    ${ECHO_MSG} "===>  Extracting $${file}"; \
	    cd ${WRKDIR} && ${GTAR} xzf ${DISTDIR}/$${file}; \
	done
.endif

.if !target(do-patch)
do-patch:
.if defined(PATCHFILES)
	@(cd ${DISTDIR}; \
	for file in ${PATCHFILES}; do \
	    case $${file} in \
		*.Z|*.gz) \
		    ${GZCAT} $${file} | ${PATCH} ${PATCH_DIST_ARGS}; \
		    ;; \
		*) \
		    ${PATCH} ${PATCH_DIST_ARGS} < $${file}; \
		    ;; \
	    esac; \
	done)
.endif
	@if test -d ${PATCHDIR}; then \
	    if [ "`${ECHO} ${PATCHDIR}/patch-*`" = "${PATCHDIR}/patch-*" ]; then \
		${ECHO_MSG} "===>  Ignoring empty patch directory"; \
	    else \
		${ECHO_MSG} "===>  Applying patches for ${PKGNAME}"; \
		for patch in ${PATCHDIR}/patch-*; do \
		    case $${patch} in \
			*.orig|*.rej|*~) \
			    ${ECHO_MSG} "===>    Ignoring patchfile $${patch}"; \
			    ;; \
			*) \
			    ${PATCH} ${PATCH_ARGS} < $${patch}; \
			    ;; \
		    esac; \
		done; \
	    fi; \
	fi
.endif

.if !target(do-configure)
do-configure:
	@cd ${WRKSRC} && ${ENV} ${CONFIGURE_ENV} ${CONFIGURE} ${CONFIGURE_ARGS}
.endif

.if !target(do-build)
do-build:
.if defined(USE_GMAKE)
	@cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS}
.else
	@cd ${WRKSRC} && ${MAKE_ENV} ${CCSMAKE} ${MAKE_ARGS}
.endif
.endif

.if !target(do-install)
do-install:
	@${MKDIR} ${WRK_BASEDIR}
.if defined(USE_GMAKE)
	@cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS}
.else
	@cd ${WRKSRC} && ${MAKE_ENV} ${CCSMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS}
.endif
.endif

.if !target(do-package)
do-package:
	@${MAKE} generate-prototype
	@${MAKE} generate-pkginfo
	@${MKDIR} ${SPOOLDIR}
	@${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype ${PKGMK_ARGS}
	@${PKGTRANS} -s ${SPOOLDIR} ${.CURDIR}/${PKGNAME} all
.endif

.if !target(do-install-package)
do-install-package:
.if defined(CORE_TOOLS)
	@${ECHO_MSG} "===>  This software is one of the core tools, which"
	@${ECHO_MSG} "===>  is necessary during make process.  Hence it cannot"
	@${ECHO_MSG} "===>  be installed by executing this target."
	@${ECHO_MSG} "===>  Use pkgrm and pkgadd manually to install the package"
	@${ECHO_MSG} "===>  of this software."
	@exit 1
.else
	${PKGADD} -d ${.CURDIR}/${PKGNAME} all
.endif
.endif

.if !target(do-release)
do-release:
	@${GZIP} -c -9 ${PKGNAME} > ${PKGNAME}.gz
.endif

###

generate-prototype:
	@${SED} -e "s?%%PKGDIR%%?${PKGDIR}?g" \
	    -e 's?%%GNU_HOSTTYPE%%?${GNU_HOSTTYPE}?g' \
	    -e 's?%%WRK_BASEDIR%%?${WRK_BASEDIR}?g' \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype

generate-pkginfo:
	@${SED} -e 's?%%ARCH%%?${ARCH}?' \
	    -e 's?%%BASEDIR%%?${PREFIX}?' \
	    -e 's?%%PKG_MAINTAINER%%?${PKG_MAINTAINER}?' \
	    ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo

clean:
	@${ECHO_MSG} "===> Cleaning for ${PKGNAME}"
	@${RM} -rf ${WRKDIR} ${PKGDIR}/pkginfo ${PKGDIR}/prototype

pkgclean:	clean
	@${ECHO_MSG} "===> Cleaning package for ${PKGNAME}"
	@${RM} -rf ${.CURDIR}/${PKGNAME}

distclean:	pkgclean
	@${ECHO_MSG} "===> Cleaning distfiles for ${PKGNAME}"
	@for file in ${DISTFILES} ${PATCHFILES}; do \
	 ${RM} -rf ${DISTDIR}/$${file}; done

### only for maintainance
gen-prototype-in:	${INSTALL_COOKIE}
	@${MAKE} install
	@${ECHO_MSG} "===> Building prototype.in"
	@if test -f ${PKGDIR}/prototype.in; then \
		${ECHO_MSG} "===>  Backing up old prototype.in"; \
		${MV} ${PKGDIR}/prototype.in ${PKGDIR}/prototype.in.bak; \
	fi
	(cd ${WRKDIR}${PREFIX} && find . -print | pkgproto) \
	 | ${POSTPROTO} > ${PKGDIR}/prototype.in
	@${ECHO_MSG} "===> prototype.in template was successfully made."
	@${ECHO_MSG} "===> You must edit the file by hand."

gen-instinfo:
.if defined(INST_INFO_FILES)
	@${ECHO_MSG} "===>  Generating postinstall"
	${TOOLSDIR}/gen-info-postinstall.sh "${INST_INFO_FILES}" >> ${PKGDIR}/postinstall
	@${ECHO_MSG} "===>  Generating preremove"
	${TOOLSDIR}/gen-info-preremove.sh "${INST_INFO_FILES}" >> ${PKGDIR}/preremove
.else
	@${ECHO_MSG} ">> Define INST_INFO_FILES definitely."
.endif
