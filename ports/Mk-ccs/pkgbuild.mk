ifeq ($(USE_IMAKE),yes)
USE_X_PREFIX=	yes
XMKMF=		${X11BASE}/bin/xmkmf
XMKMF_ARGS+=	-a
USE_CCSMAKE=	yes
MAKE_FLAGS+=	DESTDIR=${PREFIX}
endif

ifeq ($(USE_X_PREFIX),yes)
PREFIX=		${X11BASE}
else
PREFIX=		${LOCALBASE}
endif

ifeq ($(GNU_CONFIGURE),yes)
CONFIGURE=	${WRKSRC}/configure
CONFIGURE_ARGS+=	--prefix=${PREFIX}
MAKE_ENV+=	prefix=${PREFIX}
endif

ifeq ($(USE_GMAKE),yes)
MAKE=		/usr/local/bin/gmake
endif

ifeq ($(USE_CCSMAKE),yes)
MAKE=		/usr/ccs/bin/make
endif

MAKE_ENV+=	MAKE=${MAKE} MAKEFLAGS=

### rule definitions

.PHONY: fetch extract patch configure build package install-package \
	do-build post-install install-package release \
	clean pkgclean distclean \
	build-prototype

all:	build

fetch:		${FETCH_COOKIE}
extract:	${EXTRACT_COOKIE}
patch:		${PATCH_COOKIE}
configure:	${CONFIGURE_COOKIE}
build:		${BUILD_COOKIE}
install:	${INSTALL_COOKIE}
package:	${PACKAGE_COOKIE}
install-package:	${INSTPKG_COOKIE}
release:	${RELEASE_COOKIE}

${FETCH_COOKIE}:
	@${ECHO_MSG} "===> Fetching for ${PKGNAME}"
	@${MKDIR} ${WRKDIR}
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
	@${TOUCH} ${FETCH_COOKIE}

${EXTRACT_COOKIE}:	${FETCH_COOKIE}
	@${PKGMAKE} fetch
	@${ECHO_MSG} "===> Extracting for ${PKGNAME}"
	@for file in ${DISTFILES}; do \
	    ${ECHO_MSG} "===>  Extracting $${file}"; \
	    cd ${WRKDIR} && ${GTAR} xzf ${DISTDIR}/$${file}; \
	done
	@${TOUCH} $@

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	@${PKGMAKE} extract
	@${ECHO_MSG} "===> Patching for ${PKGNAME}"
ifdef (${PATCHFILES})
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
endif
	@if test -d ${PATCHDIR} ]; then \
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
	@${TOUCH} $@

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	@${PKGMAKE} patch
	@${ECHO_MSG} "===> Configuring for ${PKGNAME}"
ifeq ($(USE_IMAKE),yes)
	@cd ${WRKSRC} && ${ENV} ${CONFIGURE_ENV} ${XMKMF} ${XMKMF_ARGS}
else
	@cd ${WRKSRC} && ${ENV} ${CONFIGURE_ENV} ${CONFIGURE} ${CONFIGURE_ARGS}
endif
	@${TOUCH} $@

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	@${PKGMAKE} configure
	@${ECHO_MSG} "===> Building for ${PKGNAME}"
	@${PKGMAKE} do-build
	@${TOUCH} $@

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	@${PKGMAKE} build
	@${ECHO_MSG} "===> Installing temporarily for ${PKGNAME}"
	@${MKDIR} ${WRK_BASEDIR}
	@cd ${WRKSRC} && ${MAKE} install prefix=${WRK_BASEDIR} DESTDIR=${WRKDIR}
	@${PKGMAKE} post-install
	@${TOUCH} $@

${PACKAGE_COOKIE}:	${INSTALL_COOKIE}
	@${PKGMAKE} install
	@${ECHO_MSG} "===> Building package for ${PKGNAME}"
	@${SED} -e "s?%%PKGDIR%%?${PKGDIR}?g" \
	    -e "s?%%GNU_HOSTTYPE%%?${GNU_HOSTTYPE}?g" \
	    -e "s?%%WRK_BASEDIR%%?${WRK_BASEDIR}?g" \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype
	@${SED} -e "s?%%ARCH%%?${ARCH}?" \
	    -e "s?%%BASEDIR%%?${PREFIX}?" ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo
	@${MKDIR} ${SPOOLDIR}
	@${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype
	@${PKGTRANS} -s ${SPOOLDIR} ${CURDIR}/${PKGNAME} all
	@${TOUCH} $@

${INSTPKG_COOKIE}:	${PACKAGE_COOKIE}
	@${PKGMAKE} package
	@${ECHO_MSG} "===> Installing package for ${PKGNAME}"
	@${PKGADD} -d ${CURDIR}/${PKGNAME} all
	@${TOUCH} $@

${RELEASE_COOKIE}:	${PACKAGE_COOKIE}
	@${PKGMAKE} package
	@${ECHO_MSG} "===> Releasing package for ${PKGNAME}"
	@${GZIP} -c -9 ${PKGNAME} > ${PKGNAME}.gz
	@${TOUCH} $@

ifneq ($(DO_BUILD_OVERRIDE),yes)
do-build:
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} ${MAKE_ARGS}
endif

clean:
	@${ECHO_MSG} "===> Cleaning for ${PKGNAME}"
	@${RM} -rf ${WRKDIR} ${PKGDIR}/pkginfo ${PKGDIR}/prototype

pkgclean:	clean
	@${ECHO_MSG} "===> Cleaning package for ${PKGNAME}"
	@${RM} -rf ${CURDIR}/${PKGNAME}

distclean:	pkgclean
	@${ECHO_MSG} "===> Cleaning distfiles for ${PKGNAME}"
	@for file in ${DISTFILES}; do \
	 ${RM} -rf ${DISTDIR}/$${file}; done

### only for maintainance
build-prototype:	${INSTALL_COOKIE}
	@${PKGMAKE} install
	@${ECHO_MSG} "===> Building prototype.in"
	@if test -f ${PKGDIR}/prototype.in; then \
		${ECHO_MSG} "===>  Backing up old prototype.in"; \
		${MV} ${PKGDIR}/prototype.in ${PKGDIR}/prototype.in.bak; \
	fi
	(cd ${WRKDIR}${PREFIX} && find . -print | pkgproto) \
	 | ${POSTPROTO} > ${PKGDIR}/prototype.in
	@${ECHO_MSG} "===> prototype.in template was successfully made."
	@${ECHO_MSG} "===> You must edit the file by hand."
