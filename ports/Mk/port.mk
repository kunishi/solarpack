#
# $Id: port.mk,v 1.35 1999/08/27 08:28:16 kunishi Exp $
#

# ${PKGBUILDDIR} is set in ${LOCALBASE}/share/mk/port.mk.

.include "pkgbuild.conf"

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

DISTDIR?=	${PKGBUILDDIR}/distfiles
PORTSDIR?=	${PKGBUILDDIR}/ports
EXTRACT_SUFX?=	.tar.gz
RELEASE_PKG_DIR?=	${PKGBUILDDIR}/packages

PATCHDIR?=	${MASTERDIR}/patches
TOOLSDIR?= 	${PKGBUILDDIR}/tools
FILESDIR?=	${MASTERDIR}/files
SCRIPTDIR?=	${MASTERDIR}/scripts
PKGDIR?=	${MASTERDIR}/pkg
TEMPLATEDIR?=	${PKGBUILDDIR}/ports/Template

.if defined(USE_IMAKE)
USE_X_PREFIX=	yes
.endif
.if defined(CORE_TOOLS)
PREFIX?=	${PKGBUILDDIR}
.else
.if defined(USE_X_PREFIX)
PREFIX?=	${X11BASE}
.else
PREFIX?=	${LOCALBASE}
.endif
.endif

WRKDIR?=	${MASTERDIR}/work
WRKSRC?=	${WRKDIR}/${DISTNAME}
INSTPREFIX?=	${WRKDIR}${PREFIX}
SPOOLDIR?=	${WRKDIR}/spool

PROTOTYPE_SUB+=	PKGDIR=${PKGDIR} \
		INSTPREFIX=${INSTPREFIX} \
		TEMPLATEDIR=${TEMPLATEDIR} \
		GNU_HOSTTYPE=${GNU_HOSTTYPE}
PROTOTYPE?=	${PKGDIR}/prototype
PROTOTYPE_IN?=	${PKGDIR}/prototype.in
DEPEND?=	${PKGDIR}/depend

PKGINFO?=	${PKGDIR}/pkginfo
PKGINFO_IN?=	${TEMPLATEDIR}/pkginfo
CATEGORY?=	application
MAINTAINER?=	${PKG_MAINTAINER}
.if defined(USE_INSTALL_INFO)
CLASSES+=	info
.endif
CLASSES+=	none
# NAME, VENDOR, MAINTAINER, and CLASSES are processed directly,
# because they might contain spaces in its value, which cause
# bad affects for generating ${_sedsubpkginfolist}.
PKGINFO_SUB+=	PKG=${PKG} \
		VERSION=${VERSION} \
		CATEGORY=${CATEGORY} \
		ARCH=${ARCH} \
		BASEDIR=${PREFIX}
.if defined(PKG_WITHOUT_GZIP)
PKGNAME_REAL=	${PKGNAME}
.else
PKGNAME_REAL=	${PKGNAME}.gz
.endif

EXTRACT_COOKIE?=	${WRKDIR}/.extract_done
PATCH_COOKIE?=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE?=	${WRKDIR}/.configure_done
BUILD_COOKIE?=		${WRKDIR}/.build_done
INSTALL_COOKIE?=	${WRKDIR}/.install_done
PACKAGE_COOKIE?=	${WRKDIR}/.package_done
INSTPKG_COOKIE?=	${WRKDIR}/.instpkg_done
RELEASE_COOKIE?=	${WRKDIR}/.release_done

NOTHING_TO_DO?=		/usr/bin/true

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

MAKE_INSTALL_ENV+=	PREFIX=${INSTPREFIX} \
		LD_RUN_PATH=${LOCALBASE}/lib:${X11BASE}/lib \
		CC=${CC}
MAKE_INSTALL_ARGS+=	INSTALL=${INSTALL}
MAKE_INSTALL_EXEC_DIR?=	${WRKSRC}

TOUCH?=		/usr/bin/touch
TOUCH_FLAGS?=	

WGET?=		${LOCALBASE}/bin/wget
WGET_FLAGS?=	-nv

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
BASENAME?=	/usr/bin/basename
CAT?=		/usr/bin/cat
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
PKGINFO_PROG?=	/usr/bin/pkginfo
PKGPROTO?=	/usr/bin/pkgproto
PKGRM?=		/usr/sbin/pkgrm
PKGTRANS?=	/usr/bin/pkgtrans -o
PWD?=		/usr/bin/pwd
RM?=		/usr/bin/rm
RMDIR?=		/usr/bin/rmdir
SED?=		/usr/bin/sed
SH?=		/bin/sh
SORT?=		/usr/bin/sort
UNAME?=		/usr/bin/uname
UNIQ?=		/usr/bin/uniq

ECHO_MSG?=	${ECHO}

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

VENDOR_GNU=	Free Software Foundation, Inc.

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
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX}
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

.if !target(all)
all:	build
.endif

###

.if !target(fetch)
fetch:
	@cd ${MASTERDIR} && ${MAKE} real-fetch
.endif

.if !target(extract)
extract:	${EXTRACT_COOKIE}
.endif

.if !target(patch)
patch:	${PATCH_COOKIE}
.endif

.if !target(configure)
configure:	${CONFIGURE_COOKIE}
.endif

.if !target(build)
.if defined(NO_BUILD)
build:	configure
	@${TOUCH} ${TOUCH_FLAGS} ${BUILD_COOKIE}
.else
build:	${BUILD_COOKIE}
.endif
.endif

.if !target(install)
.if defined(NO_INSTALL)
install:	build
	@${TOUCH} ${TOUCH_FLAGS} ${INSTALL_COOKIE}
.else
install:	${INSTALL_COOKIE}
.endif
.endif

.if !target(package)
package:	${PACKAGE_COOKIE}
.endif

.if !target(instpkg)
instpkg:	${INSTPKG_COOKIE}
.endif

.if !target(release)
release:	${RELEASE_COOKIE}
.endif

${EXTRACT_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} fetch
	@cd ${MASTERDIR} && ${MAKE} real-extract
${PATCH_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} extract
	@cd ${MASTERDIR} && ${MAKE} real-patch
${CONFIGURE_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} patch
	@cd ${MASTERDIR} && ${MAKE} real-configure
${BUILD_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} configure
	@cd ${MASTERDIR} && ${MAKE} real-build
${INSTALL_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} build
	@cd ${MASTERDIR} && ${MAKE} real-install
${PACKAGE_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} install
	@cd ${MASTERDIR} && ${MAKE} real-package
${INSTPKG_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} package
	@cd ${MASTERDIR} && ${MAKE} real-instpkg
${RELEASE_COOKIE}:
	@cd ${MASTERDIR} && ${MAKE} package
	@cd ${MASTERDIR} && ${MAKE} real-release

real-fetch:
	@${ECHO_MSG} "===> Fetching for ${PKGNAME}"
.if defined(NO_FETCH)
	@${ECHO_MSG} ">> ${NO_FETCH}"
.endif
.if target(pre-fetch)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-fetch)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif

real-extract:
	@${ECHO_MSG} "===> Extracting for ${PKGNAME}"
.if target(pre-extract)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} checksum
	@cd ${MASTERDIR} && ${MAKE} build-depends lib-depends
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-extract)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-patch:
	@${ECHO_MSG} "===> Patching for ${PKGNAME}"
.if target(pre-patch)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-patch)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-configure:
	@${ECHO_MSG} "===> Configuring for ${PKGNAME}"
.if target(pre-configure)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-configure)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-build:
	@${ECHO_MSG} "===> Building for ${PKGNAME}"
.if target(pre-build)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-build)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-install:
	@${ECHO_MSG} "===> Installing temporarily for ${PKGNAME}"
.if target(pre-install)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-install)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-package:
	@${ECHO_MSG} "===> Building package for ${PKGNAME}"
.if target(pre-package)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-package)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-instpkg:
	@if ${PKGINFO_PROG} -q ${PKG}; then \
	  ${ECHO_MSG} "===> Package ${PKG} is already installed."; \
	  exit 1; \
	fi
	@${ECHO_MSG} "===> Installing package for ${PKGNAME}"
	@cd ${MASTERDIR} && ${MAKE} run-depends lib-depends
.if target(pre-instpkg)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-instpkg)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

real-release:
	@${ECHO_MSG} "===> Releasing package for ${PKGNAME}"
.if target(pre-release)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/pre-/}
.endif
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/do-/}
.if target(post-release)
	@cd ${MASTERDIR} && ${MAKE} ${.TARGET:S/^real-/post-/}
.endif
	@${TOUCH} ${TOUCH_FLAGS} ${WRKDIR}/.${.TARGET:S/^real-//}_done

###

.if !target(do-fetch)
do-fetch:
	@(cd ${DISTDIR}; \
	 for file in ${DISTFILES}; do \
		if [ ! -f $$file ]; then \
			for site in ${MASTER_SITES}; do \
				${ECHO_MSG} ">> fetching $${site}$${file}..."; \
				if ${WGET} ${WGET_FLAGS} $${site}$${file}; then \
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
				if ${WGET} ${WGET_FLAGS} $${site}$${file}; then \
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
	  cd ${MASTERDIR} && ${SH} ${SCRIPTDIR}/configure; \
	fi
.if defined(HAS_CONFIGURE)
	@cd ${WRKSRC} && \
	  ${ENV} ${CONFIGURE_ENV} ./${CONFIGURE_SCRIPT} ${CONFIGURE_ARGS}
.endif
.if defined(USE_IMAKE)
	@cd ${WRKSRC} && ${XMKMF}
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
	@${MKDIR} ${INSTPREFIX}
.if defined(USE_GMAKE)
	@cd ${MAKE_INSTALL_EXEC_DIR} && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
.else
	@cd ${MAKE_INSTALL_EXEC_DIR} && ${ENV} ${MAKE_INSTALL_ENV} ${CCSMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
.endif
.endif

.if !target(do-package)
do-package:
	@cd ${MASTERDIR} && ${MAKE} gen-prototype
	@cd ${MASTERDIR} && ${MAKE} gen-pkginfo
	@cd ${MASTERDIR} && ${MAKE} gen-depend
	@${MKDIR} ${SPOOLDIR}
	@${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype ${PKGMK_ARGS}
	@${PKGTRANS} -s ${SPOOLDIR} ${MASTERDIR}/${PKGNAME} all
.endif

.if !target(do-instpkg)
do-instpkg:
.if defined(CORE_TOOLS)
	@${ECHO_MSG} "===>  This software is one of the core tools, which"
	@${ECHO_MSG} "===>  is necessary during make process.  Hence it cannot"
	@${ECHO_MSG} "===>  be installed by executing this target."
	@${ECHO_MSG} "===>  Use pkgrm and pkgadd manually to install the package"
	@${ECHO_MSG} "===>  of this software."
	@exit 1
.else
	${PKGADD} -d ${MASTERDIR}/${PKGNAME} all
.endif
.endif

.if !target(do-release)
do-release:
.if !defined(PKG_WITHOUT_GZIP)
	${GZIP} -c -9 ${PKGNAME} > ${PKGNAME_REAL}
.endif
.if defined(RELEASE_PKG_DIR)
	if [ -d ${RELEASE_PKG_DIR} ]; then \
	  ${MV} ${PKGNAME_REAL} ${RELEASE_PKG_DIR}/${ARCH}/${OSREL}; \
	fi
.endif
.endif

###

.for name in fetch extract patch configure build install package instpkg release
.if !target(pre-${name})
pre-${name}:
	@${NOTHING_TO_DO}
.endif
.if !target(post-${name})
	@${NOTHING_TO_DO}
.endif
.endfor

###

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

.if !defined(DEPENDS_TARGET)
DEPENDS_TARGET=	instpkg
.endif

.if !target(depends)
depends:	lib-depends
	@cd ${MASTERDIR} && ${MAKE} build-depends
	@cd ${MASTERDIR} && ${MAKE} run-depends

.if make(build-depends) && defined(BUILD_DEPENDS)
DEPENDS_TMP+=	${BUILD_DEPENDS}
.endif

.if make(lib-depends) && defined(LIB_DEPENDS)
DEPENDS_TMP+=	${LIB_DEPENDS}
.endif

.if make(run-depends) && defined(RUN_DEPENDS)
DEPENDS_TMP+=	${RUN_DEPENDS}
.endif

_DEPENDS_USE:
.if defined(DEPENDS_TMP)
	@for i in "${DEPENDS_TMP}"; do \
	  pkg=`${ECHO} $$i | ${SED} -e 's/:.*//'`; \
	  dir=`${ECHO} $$i | ${SED} -e 's/[^:]*://'`; \
	  target=${DEPENDS_TARGET}; \
	  if ${PKGINFO_PROG} -q $$pkg; then \
	    ${ECHO_MSG} "===>   ${PKGNAME} depends on package: $$pkg - found"; \
	    notfound=0; \
	  else \
	    ${ECHO_MSG} "===>   ${PKGNAME} depends on package: $$pkg - not found"; \
	    notfound=1; \
	  fi; \
	  if [ $$notfound != 0 ]; then \
	    ${ECHO_MSG} "===>   Verifying $$target for $$pkg in $$dir"; \
	    if [ ! -d "$$dir" ]; then \
	      ${ECHO_MSG} "     >> No directory for $$pkg.  Skipping..."; \
	    else \
	      (cd $$dir; ${MAKE} $$target); \
	      ${ECHO_MSG} "===>   Returning to build of ${PKGNAME}"; \
	    fi; \
	  fi; \
	done
.else
	@${NOTHING_TO_DO}
.endif

build-depends:	_DEPENDS_USE
lib-depends:	_DEPENDS_USE
run-depends:	_DEPENDS_USE

.endif

.if !target(gen-depend-pkg-list)
gen-depend-pkg-list:
.if defined(LIB_DEPENDS) || defined(RUN_DEPENDS)
.for entry in ${LIB_DEPENDS} ${RUN_DEPENDS}
	@${ECHO} ${entry}
	@dir=`${ECHO} ${entry} | ${SED} -e 's/[^:]*://'`; \
	  (cd $${dir} && ${MAKE} gen-depend-pkg-list)
.endfor
.endif
.endif

.if !target(print-pkg)
print-pkg:
	@${ECHO} -n ${PKG}
.endif
.if !target(print-name)
print-name:
	@${ECHO} ${NAME}
.endif

.if !target(gen-depend)
gen-depend:
.if defined(LIB_DEPENDS) || defined(RUN_DEPENDS)
	@${ECHO_MSG} "===>  Generating depend"
	@for entry in `cd ${MASTERDIR} && ${MAKE} gen-depend-pkg-list`; do \
	  pkg=`${ECHO} $${entry} | ${SED} -e 's/:.*//'`; \
	  dir=`${ECHO} $${entry} | ${SED} -e 's/[^:]*://'`; \
	  name=`cd $${dir} && ${MAKE} print-name`; \
	  ${ECHO} "P $${pkg} $${name}" >> ${DEPEND}; \
	done
.else
	@${NOTHING_TO_DO}
.endif
.endif

.for sub in ${PROTOTYPE_SUB}
_sedsubprotolist!=	sym=`${ECHO} "${sub}" | ${SED} -e 's/=.*//'`; \
			val=`${ECHO} "${sub}" | ${SED} -e 's/^[^=][^=]*=//'`; \
			echo "${_sedsubprotolist} -e \"s!%%$${sym}%%!$${val}!g\""
.endfor

.if !target(gen-prototype)
gen-prototype:
	@${ECHO_MSG} "===>  Generating prototype file"
	@${SED} ${_sedsubprotolist} ${PROTOTYPE_IN} > ${PROTOTYPE}
.endif

.for sub in ${PKGINFO_SUB}
_sedsubpkginfolist!=	sym=`${ECHO} "${sub}" | ${SED} -e 's/=.*//'`; \
			val=`${ECHO} "${sub}" | ${SED} -e 's/^[^=][^=]*=//'`; \
			echo "${_sedsubpkginfolist} -e \"s!%%$${sym}%%!$${val}!g\""
.endfor

.if !target(gen-pkginfo)
gen-pkginfo:
	@${ECHO_MSG} "===>  Generating pkginfo file"
	@${SED} ${_sedsubpkginfolist} \
		-e "s!%%NAME%%!${NAME}!g" \
		-e "s!%%VENDOR%%!${VENDOR}!g" \
		-e "s!%%MAINTAINER%%!${MAINTAINER}!g" \
		-e "s!%%CLASSES%%!${CLASSES}!g" ${PKGINFO_IN} > ${PKGINFO}
.endif

.if !target(clean)
clean:
	@${ECHO_MSG} "===> Cleaning for ${PKGNAME}"
	@${RM} -rf ${WRKDIR} ${PKGINFO} ${PROTOTYPE} ${DEPEND}
.endif

.if !target(pkgclean)
pkgclean:	clean
	@${ECHO_MSG} "===> Cleaning package for ${PKGNAME}"
	@${RM} -rf ${MASTERDIR}/${PKGNAME}
.endif

.if !target(distclean)
distclean:	pkgclean
	@${ECHO_MSG} "===> Cleaning distfiles for ${PKGNAME}"
	@for file in ${DISTFILES} ${PATCHFILES}; do \
	 ${RM} -rf ${DISTDIR}/$${file}; done
.endif

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
PROTOTYPE_IN_BASE!=	${BASENAME} ${PROTOTYPE_IN}
gen-prototype-in:	${INSTALL_COOKIE}
	@${MAKE} install
	@${ECHO_MSG} "===> Building ${PROTOTYPE_IN_BASE}"
	@${MKDIR} ${PKGDIR}
	@if test -f ${PROTOTYPE_IN}; then \
		${ECHO_MSG} "===>  Backing up old ${PROTOTYPE_IN_BASE}"; \
		${MV} ${PROTOTYPE_IN} ${PROTOTYPE_IN}.bak; \
	fi
	@${ECHO} 'i pkginfo=%%PKGDIR%%/pkginfo' >> ${PROTOTYPE_IN}
.if defined(LIB_DEPENDS) || defined(RUN_DEPENDS)
	@${ECHO} 'i depend=%%PKGDIR%%/depend' >> ${PROTOTYPE_IN}
.endif
.if defined(USE_INSTALL_INFO)
	@${ECHO} 'i i.info=%%TEMPLATEDIR%%/i.info' >> ${PROTOTYPE_IN}
	@${ECHO} 'i r.info=%%TEMPLATEDIR%%/r.info' >> ${PROTOTYPE_IN}
.endif
	@(cd ${WRKDIR}${PREFIX} && find . -print | ${PKGPROTO}) | \
	  ${SORT} +2 | ${UNIQ} | ${SED} \
		-e 's?^\(f .*\) \(0[0-9]*\) .* .*?\1 \2 ${BINOWN} ${BINGRP}?' \
		-e 's?^\(d .*\) .* .*?\1 ${BINOWN} ${BINGRP}?' \
		-e 's?^\(. none\) \(.*\) \([0-9]* .*\)?\1 \2=%%INSTPREFIX%%/\2 \3?' \
		>> ${PROTOTYPE_IN}
	@${ECHO_MSG} "===> ${PROTOTYPE_IN_BASE} template was successfully made."
	@${ECHO_MSG} "===> You must edit the file by hand."
.endif
