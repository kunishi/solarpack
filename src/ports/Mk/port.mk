#
# $Id: port.mk,v 1.17 1999/06/03 11:39:48 kunishi Exp $
#

.include "/opt/local/pkgbuild/conf/pkgbuild.conf"

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

MASTERDIR?=	${.CURDIR}

LOCALBASE?=	/usr/local
X11BASE?=	/usr/openwin

PKGBUILDDIR?=	/opt/pkgbuild
DISTDIR?=	${PKGBUILDDIR}/distfiles
EXTRACT_SUFX?=	.tar.gz
RELEASE_PKG_DIR?=	${PKGBUILDDIR}/packages

PATCHDIR?=	${MASTERDIR}/patches
TOOLSDIR?= 	${PKGBUILDDIR}/tools
FILESDIR?=	${MASTERDIR}/files
SCRIPTDIR?=	${MASTERDIR}/scripts
PKGDIR?=	${MASTERDIR}/pkg

.if defined(USE_IMAKE)
USE_X_PREFIX=	yes
.endif
.if defined(USE_X_PREFIX)
PREFIX?=	${X11BASE}
.else
PREFIX?=	${LOCALBASE}
.endif

WRKDIR?=	${MASTERDIR}/work
WRKSRC?=	${WRKDIR}/${DISTNAME}
WRK_BASEDIR?=	${WRKDIR}${PREFIX}
SPOOLDIR?=	${WRKDIR}/spool

PROTOTYPE_SUB+=	PKGDIR=${PKGDIR} \
		WRK_BASEDIR=${WRK_BASEDIR} \
		GNU_HOSTTYPE=${GNU_HOSTTYPE}

EXTRACT_COOKIE=		${WRKDIR}/.extract_done
PATCH_COOKIE=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE=	${WRKDIR}/.configure_done
BUILD_COOKIE=		${WRKDIR}/.build_done
INSTALL_COOKIE=		${WRKDIR}/.install_done
PACKAGE_COOKIE=		${WRKDIR}/.package_done
INSTPKG_COOKIE=		${WRKDIR}/.instpkg_done
RELEASE_COOKIE=		${WRKDIR}/.release_done

CC?=		gcc
GMAKE?=		gmake
XMKMF?=		${X11BASE}/bin/xmkmf -a

CONFIGURE_ENV+=	CC=${CC} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib

MD5?=		${LOCALBASE}/bin/md5
MD5_FILE=	${FILESDIR}/md5

MAKEFILE?=	Makefile
MAKE_FLAGS?=	-f ${MAKEFILE}
MAKE_ENV+=	PREFIX=${PREFIX} \
		LOCALBASE=${LOCALBASE} \
		X11BASE=${X11BASE} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib \
		CC=${CC}

MAKE_INSTALL_ENV+=	PREFIX=${WRK_BASEDIR} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib \
		CC=${CC}
MAKE_INSTALL_ARGS+=	INSTALL=${INSTALL}
MAKE_INSTALL_EXEC_DIR?=	${WRKSRC}

TOUCH?=		/usr/bin/touch
TOUCH_FLAGS?=	

PATCH?=		${LOCALBASE}/bin/patch
PATCH_STRIP?=	-p0
PATCH_DIST_STRIP?=	-p0
PATCH_ARGS?=	-d ${WRKSRC} --backup --forward --quiet -E ${PATCH_STRIP}
PATCH_DIST_APPLY_DIR?=	${WRKSRC}
PATCH_DIST_ARGS?=	-d ${PATCH_DIST_APPLY_DIR} --backup --forward --quiet -E ${PATCH_DIST_STRIP}

TAR?=		gtar

EXTRACT_CMD?=	${GZIP_CMD}

INSTALL_PROGRAM= \
	${INSTALL} -c -s -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_SCRIPT=	\
	${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE}
INSTALL_DATA=	\
	${INSTALL} -c -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE}
INSTALL_MAN=	\
	${INSTALL} -c -o ${MANOWN} -g ${MANGRP} -m ${MANMODE}
INSTALL_MACROS=	BSD_INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		BSD_INSTALL_SCRIPT="${INSTALL_SCRIPT}" \
		BSD_INSTALL_DATA="${INSTALL_DATA}" \
		BSD_INSTALL_MAN="${INSTALL_MAN}"
MAKE_ENV+=	${INSTALL_MACROS}

PKG_CMD?=	${PKGMK}
PKG_DELETE?=	${PKGRM}

AWK?=		/usr/bin/awk
CCSMAKE?=	/usr/ccs/bin/make
CHOWN?=		/usr/bin/chown
CP?=		/usr/bin/cp
ECHO?=		/usr/bin/echo
ENV?=		/usr/bin/env
EXPR?=		/usr/bin/expr
GREP?=		/usr/bin/grep
GZCAT?=		${LOCALBASE}/bin/gzip -cd
GZIP?=		${LOCALBASE}/bin/gzip
INSTALL?=	/usr/ucb/install
LN?=		/usr/bin/ln
MV?=		/usr/bin/mv
MKDIR?=		/usr/bin/mkdir -p
PKGADD?=	/usr/sbin/pkgadd
PKGMK?=		/usr/bin/pkgmk -o
PKGPROTO?=	/usr/bin/pkgproto
PKGRM?=		/usr/sbin/pkgrm
PKGTRANS?=	/usr/bin/pkgtrans -o
PWD?=		/usr/bin/pwd
RM?=		/usr/bin/rm
RMDIR?=		/usr/bin/rmdir
SED?=		/usr/bin/sed
SH?=		/bin/sh
UNAME?=		/usr/bin/uname
WGET?=		${LOCALBASE}/bin/wget

ECHO_MSG?=	${ECHO}
POSTPROTO=	${PKGBUILDDIR}/tools/postproto.sh

ALL_TARGET?=		all
INSTALL_TARGET?=	install

BINOWN?=	root
BINGRP?=	bin
BINMODE?=	755
SHAREOWN?=	root
SHAREGRP?=	bin
SHAREMODE?=	644
MANOWN?=	root
MANGRP?=	bin
MANMODE?=	644

MASTER_SITES_GNU+=	\
	ftp://prep.ai.mit.edu/pub/gnu/@SUBDIR@/ \
	ftp://wuarchive.wustl.edu/systems/gnu/@SUBDIR@/ \
	ftp://ftp.kddlabs.co.jp/pub/gnu/@SUBDIR@/ \
	ftp://ftp.cdrom.com/pub/gnu/@SUBDIR@/ \
	ftp://tron.um.u-tokyo.ac.jp/pub/GNU/prep/@SUBDIR@/

MASTER_SITES?=	
PATCH_SITES?=	

DISTFILES?=	${DISTNAME}${EXTRACT_SUFX}
PKGNAME?=	${DISTNAME}

ALLFILES?=	${DISTFILES} ${PATCHFILES}

CKSUMFILES=	${ALLFILES}

EXTRACT_ONLY?=	${DISTFILES}

PKG_MAINTAINER?=	kunishi@c.oka-pu.ac.jp

CONFIGURE_SCRIPT?=	configure
CONFIGURE_TARGET?=	${GNU_HOSTTYPE}

.if defined(GNU_CONFIGURE)
CONFIGURE_ARGS+=	--prefix=${PREFIX} ${CONFIGURE_TARGET}
HAS_CONFIGURE=		yes
MAKE_ARGS+=		prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${WRK_BASEDIR}
.endif

.if defined(USE_GMAKE)
MAKE_ENV+=	MAKE=${GMAKE}
.endif

.if defined(USE_IMAKE)
MAKE_ARGS+=	DESTDIR=${PREFIX}
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR} PREFIX=${PREFIX} \
		LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
.if !defined(NO_INSTALL_MAN)
INSTALL_TARGET+=	install.man
.endif
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
	@${MAKE} checksum
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
do-fetch:
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
	    cd ${WRKDIR} && ${TAR} xzf ${DISTDIR}/$${file}; \
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
	@if [ -f ${SCRIPTDIR}/configure ]; then \
	  cd ${.CURDIR} && ${SH} ${SCRIPTDIR}/configure; \
	fi
.if defined(HAS_CONFIGURE)
	@cd ${WRKSRC} && \
	  ${ENV} ${CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}
.endif
.if defined(USE_IMAKE)
	@cd ${WRKSRC} && ${XMKMF})
.endif
.endif

.if !target(do-build)
do-build:
.if defined(USE_GMAKE)
	@cd ${WRKSRC} && ${MAKE_ENV} ${GMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}
.else
	@cd ${WRKSRC} && ${MAKE_ENV} ${CCSMAKE} ${MAKE_ARGS} ${MAKE_FLAGS}
.endif
.endif

.if !target(do-install)
do-install:
	@${MKDIR} ${WRK_BASEDIR}
.if defined(USE_GMAKE)
	@cd ${MAKE_INSTALL_EXEC_DIR} && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
.else
	@cd ${MAKE_INSTALL_EXEC_DIR} && ${ENV} ${MAKE_INSTALL_ENV} ${CCSMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
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
	${GZIP} -c -9 ${PKGNAME} > ${PKGNAME}.gz
.if defined(RELEASE_PKG_DIR)
	if [ -d ${RELEASE_PKG_DIR} ]; then \
	  ${MV} ${PKGNAME}.gz ${RELEASE_PKG_DIR}/${ARCH}/${OSREL}; \
	fi
.endif
.endif

.if !target(checksum)
checksum:
	@if [ ! -f ${MD5_FILE} ]; then \
		${ECHO_MSG} ">> No MD5 checksum file."; \
	else \
		(cd ${DISTDIR}; OK="true"; \
		  for file in ${CKSUMFILES}; do \
			CKSUM=`${MD5} < $$file`; \
			CKSUM2=`${GREP} "^MD5 ($$file)" ${MD5_FILE} | ${AWK} '{print $$4}'`; \
			if [ "$$CKSUM2" = "" ]; then \
				${ECHO_MSG} ">> No checksum recorded for $$file."; \
				OK="false"; \
			elif [ "$$CKSUM2" = "IGNORE" ]; then \
				${ECHO_MSG} ">> Checksum for $$file is set to IGNORE in md5 file even though"; \
				${ECHO_MSG} "   the file is not in the "'$$'"{IGNOREFILES} list."; \
				OK="false"; \
			elif ${EXPR} "$$CKSUM2" : ".*$$CKSUM" > /dev/null; then \
				${ECHO_MSG} ">> Checksum OK for $$file."; \
			else \
				${ECHO_MSG} ">> Checksum mismatch for $$file."; \
				OK="false"; \
			fi; \
		done) \
	fi
.endif

###

.if !target(generate-prototype)
generate-prototype:
	@${SED} -e "s?%%PKGDIR%%?${PKGDIR}?g" \
	    -e 's?%%GNU_HOSTTYPE%%?${GNU_HOSTTYPE}?g' \
	    -e 's?%%WRK_BASEDIR%%?${WRK_BASEDIR}?g' \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype
.endif

.if !target(generate-pkginfo)
generate-pkginfo:
	@${SED} -e 's?%%ARCH%%?${ARCH}?' \
	    -e 's?%%BASEDIR%%?${PREFIX}?' \
	    -e 's?%%PKG_MAINTAINER%%?${PKG_MAINTAINER}?' \
	    ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo
.endif

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
.if !target(makesum)
makesum:	fetch
	@${MKDIR} ${FILESDIR}
	@if [ -f ${MD5_FILE} ]; then ${RM} -f ${MD5_FILE}; fi
	@cd ${DISTDIR}; \
	  for file in ${CKSUMFILES}; do \
		${MD5} $$file >> ${MD5_FILE}; \
	  done
.endif

.if !target(gen-prototype-in)
gen-prototype-in:	${INSTALL_COOKIE}
	@${MAKE} install
	@${ECHO_MSG} "===> Building prototype.in"
	@${MKDIR} ${PKGDIR}
	@if test -f ${PKGDIR}/prototype.in; then \
		${ECHO_MSG} "===>  Backing up old prototype.in"; \
		${MV} ${PKGDIR}/prototype.in ${PKGDIR}/prototype.in.bak; \
	fi
	(cd ${WRKDIR}${PREFIX} && find . -print | pkgproto) \
	 | ${POSTPROTO} > ${PKGDIR}/prototype.in
	@${ECHO_MSG} "===> prototype.in template was successfully made."
	@${ECHO_MSG} "===> You must edit the file by hand."
.endif

.if !target(gen-instinfo)
gen-instinfo:
.if defined(INST_INFO_FILES)
	@${MKDIR} ${PKGDIR}
	@${ECHO_MSG} "===>  Generating postinstall"
	${TOOLSDIR}/gen-info-postinstall.sh "${INST_INFO_FILES}" >> ${PKGDIR}/postinstall
	@${ECHO_MSG} "===>  Generating preremove"
	${TOOLSDIR}/gen-info-preremove.sh "${INST_INFO_FILES}" >> ${PKGDIR}/preremove
.else
	@${ECHO_MSG} ">> Define INST_INFO_FILES definitely."
.endif
.endif
