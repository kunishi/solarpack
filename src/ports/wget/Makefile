PKGNAME=	wget-1.5.3
BASEDIR=	/usr/local
USE_GMAKE=	yes

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/examples/wget
	${INSTALL} -c ${WRKSRC}/doc/sample.wgetrc \
	    ${WRK_BASEDIR}/share/examples/wget/sample.wgetrc

GMAKE=		/usr/local/bin/gmake
GTAR=		/usr/local/bin/gtar
GZIP=		/usr/local/bin/gzip
INSTALL=	/usr/ucb/install
MAKE=		/usr/ccs/bin/make
MKDIR=		/usr/bin/mkdir -p
PKGMK=		/usr/bin/pkgmk
PKGTRANS=	/usr/bin/pkgtrans
PWD=		/usr/bin/pwd
RM=		/usr/bin/rm
SED=		/usr/bin/sed
TOUCH=		/usr/bin/touch
UNAME=		/usr/bin/uname

CURDIR=	$(shell ${PWD})
WRKDIR=	${CURDIR}/work
WRKSRC=	${WRKDIR}/${PKGNAME}
WRK_BASEDIR=	${WRKDIR}/local
SPOOLDIR=	${WRKDIR}/spool
PKGDIR=	${CURDIR}/pkg

EXTRACT_SUFX=	.tar.gz

ARCH=		$(shell ${UNAME} -p)

EXTRACT_COOKIE:=	${WRKDIR}/.extract_done
PATCH_COOKIE:=		${WRKDIR}/.patch_done
CONFIGURE_COOKIE:=	${WRKDIR}/.configure_done
BUILD_COOKIE:=		${WRKDIR}/.build_done
INSTALL_COOKIE:=	${WRKDIR}/.install_done
PACKAGE_COOKIE:=	${WRKDIR}/.package_done

.PHONY: extract patch configure build prepackage package clean pkgclean \
	post-install

all:	build

extract:	${EXTRACT_COOKIE}
patch:		${PATCH_COOKIE}
configure:	${CONFIGURE_COOKIE}
build:		${BUILD_COOKIE}
install:	${INSTALL_COOKIE}
package:	${PACKAGE_COOKIE}

${EXTRACT_COOKIE}:
	${MKDIR} ${WRKDIR}
	cd ${WRKDIR} && ${GTAR} xzf /work/net/${PKGNAME}${EXTRACT_SUFX}
	@${TOUCH} $@

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	${GMAKE} extract
	# nothing done with patch
	@${TOUCH} $@

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	${GMAKE} patch
	cd ${WRKSRC} && ./configure
	@${TOUCH} $@

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	${GMAKE} configure
	cd ${WRKSRC} && ${MAKE}
	@${TOUCH} $@

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	${GMAKE} build
	cd ${WRKSRC} && ${MAKE} install prefix=${WRK_BASEDIR}
	${GMAKE} post-install
	@${TOUCH} $@

${PACKAGE_COOKIE}:	${INSTALL_COOKIE}
	${GMAKE} install
	${SED} -e "s?%%PKGDIR%%?${PKGDIR}?" \
	    -e "s?%%WRK_BASEDIR%%?${WRK_BASEDIR}?" \
	    ${PKGDIR}/prototype.in > ${PKGDIR}/prototype
	${SED} -e "s?%%ARCH%%?${ARCH}?" \
	    -e "s?%%BASEDIR%%?${BASEDIR}?" ${PKGDIR}/pkginfo.in > ${PKGDIR}/pkginfo
	${MKDIR} ${SPOOLDIR}
	${PKGMK} -d ${SPOOLDIR} -f ${PKGDIR}/prototype
	${PKGTRANS} -s ${SPOOLDIR} ${CURDIR}/${PKGNAME} all
	${GZIP} -9 ${PKGNAME}
	@${TOUCH} $@

clean:
	${RM} -rf ${WRKDIR} ${PKGDIR}/pkginfo ${PKGDIR}/prototype

pkgclean:	clean
	${RM} -rf ${CURDIR}/${PKGNAME}.gz
