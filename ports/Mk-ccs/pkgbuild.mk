#
# $Id: pkgbuild.mk,v 1.12 1999/05/14 13:09:39 kunishi Exp $
#

### rule definitions

.PHONY: extract configure build package install-package \
	pre-fetch fetch post-fetch \
	pre-patch patch post-patch \
	do-build pre-install post-install install-package release \
	generate-prototype generate-pkginfo \
	clean pkgclean distclean \
	gen-prototype-in gen-instinfo

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
	@${PKGMAKE} pre-fetch
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
	@if [ "${PATCHFILES}" != '' ]; then \
	(cd ${DISTDIR}; \
	 for file in "${PATCHFILES}"; do \
		if [ ! -f $${file} ]; then \
			for site in "${PATCH_SITES}"; do \
				${ECHO_MSG} ">> fetching $${site}$${file}..."; \
				if ${WGET} $${site}$${file}; then \
					continue 2; \
				fi \
			done; \
		fi \
	 done); \
	fi
	@${PKGMAKE} post-fetch
	@${TOUCH} ${FETCH_COOKIE}

${EXTRACT_COOKIE}:	${FETCH_COOKIE}
	@${PKGMAKE} fetch
	@${ECHO_MSG} "===> Extracting for ${PKGNAME}"
	@for file in ${EXTRACT_ONLY}; do \
	    ${ECHO_MSG} "===>  Extracting $${file}"; \
	    cd ${WRKDIR} && ${GTAR} xzf ${DISTDIR}/$${file}; \
	done
	@${TOUCH} $@

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	@${PKGMAKE} extract
	@${ECHO_MSG} "===> Patching for ${PKGNAME}"
	@${PKGMAKE} pre-patch
	@if [ "${PATCHFILES}" != '' ]; then \
	(cd ${DISTDIR}; \
	for file in "${PATCHFILES}"; do \
	    case $${file} in \
		*.Z|*.gz) \
		    ${GZCAT} $${file} | ${PATCH} ${PATCH_DIST_ARGS}; \
		    ;; \
		*) \
		    ${PATCH} ${PATCH_DIST_ARGS} < $${file}; \
		    ;; \
	    esac; \
	done) \
	fi
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
	@${PKGMAKE} post-patch
	@${TOUCH} $@

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	@${PKGMAKE} patch
	@${ECHO_MSG} "===> Configuring for ${PKGNAME}"
	@cd ${WRKSRC} && ${ENV} ${CONFIGURE_ENV} ${CONFIGURE} ${CONFIGURE_ARGS}
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
	@${PKGMAKE} pre-install
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS}
	@${PKGMAKE} post-install
	@${TOUCH} $@

${PACKAGE_COOKIE}:	${INSTALL_COOKIE}
	@${PKGMAKE} install
	@${ECHO_MSG} "===> Building package for ${PKGNAME}"
	@${PKGMAKE} generate-prototype
	@${PKGMAKE} generate-pkginfo
	@${MKDIR} ${SPOOLDIR}
	@${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype ${PKGMK_ARGS}
	@${PKGTRANS} -s ${SPOOLDIR} ${CURDIR}/${PKGNAME} all
	@${TOUCH} $@

${INSTPKG_COOKIE}:	${PACKAGE_COOKIE}
	@if [ "${CORE_TOOLS}" = 'yes' ]; then \
	${ECHO_MSG} "===> This software is one of the core tools, which"; \
	${ECHO_MSG} "===> is necessary during make process.  Hence it cannot"; \
	${ECHO_MSG} "===> be installed by executing this target."; \
	${ECHO_MSG} "===> Use pkgrm and pkgadd manually to install the package"; \
	${ECHO_MSG} "===> of this software."; \
	else \
	${PKGMAKE} package; \
	${ECHO_MSG} "===> Installing package for ${PKGNAME}"; \
	${PKGADD} -d ${CURDIR}/${PKGNAME} all; \
	${TOUCH} $@; \
	fi

${RELEASE_COOKIE}:	${PACKAGE_COOKIE}
	@${PKGMAKE} package
	@${ECHO_MSG} "===> Releasing package for ${PKGNAME}"
	@${GZIP} -c -9 ${PKGNAME} > ${PKGNAME}.gz
	@${TOUCH} $@

pre-fetch::

post-fetch::

pre-patch::

post-patch::

do-build::
	@cd ${WRKSRC} && ${MAKE_ENV} ${MAKE} ${MAKE_ARGS}

pre-install::

post-install::

generate-prototype::
	@${SED} -e "s?%%PKGDIR%%?${PKGDIR}?g" \
	    -e 's?%%GNU_HOSTTYPE%%?${GNU_HOSTTYPE}?g' \
	    -e 's?%%WRK_BASEDIR%%?${WRK_BASEDIR}?g' \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype

generate-pkginfo::
	@${SED} -e 's?%%ARCH%%?${ARCH}?' \
	    -e 's?%%BASEDIR%%?${PREFIX}?' \
	    -e 's?%%PKG_MAINTAINER%%?${PKG_MAINTAINER}?' \
	    ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo

clean::
	@${ECHO_MSG} "===> Cleaning for ${PKGNAME}"
	@${RM} -rf ${WRKDIR} ${PKGDIR}/pkginfo ${PKGDIR}/prototype

pkgclean::	clean
	@${ECHO_MSG} "===> Cleaning package for ${PKGNAME}"
	@${RM} -rf ${CURDIR}/${PKGNAME}

distclean::	pkgclean
	@${ECHO_MSG} "===> Cleaning distfiles for ${PKGNAME}"
	@for file in ${DISTFILES} ${PATCHFILES}; do \
	 ${RM} -rf ${DISTDIR}/$${file}; done

### only for maintainance
gen-prototype-in::	${INSTALL_COOKIE}
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

gen-instinfo::
	@if [ "${INST_INFO_FILES}" != '' ]; then \
		${ECHO_MSG} "===>  Generating postinstall"; \
		${TOOLSDIR}/gen-info-postinstall.sh "${INST_INFO_FILES}" >> ${PKGDIR}/postinstall; \
		${ECHO_MSG} "===>  Generating preremove"; \
		${TOOLSDIR}/gen-info-preremove.sh "${INST_INFO_FILES}" >> ${PKGDIR}/preremove; \
	else \
		${ECHO_MSG} ">> Define INST_INFO_FILES definitely."; \
	fi
