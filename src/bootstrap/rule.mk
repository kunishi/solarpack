#
# common rule for soap, standard Solaris make version
# $Id: rule.mk,v 1.2 2000/05/17 01:50:07 kunishi Exp $
#

.PHONY:	fetch extract patch configure build install

${FETCH_COOKIE}:
	${MKDIR} ${DISTDIR} ${WORKDIR} ${TMPPREFIX}
	${MAKE} -f ${MAKEFILE} fetch
	${TOUCH} ${FETCH_COOKIE}

${EXTRACT_COOKIE}:	${FETCH_COOKIE}
	${MAKE} -f ${MAKEFILE} extract
	${TOUCH} ${EXTRACT_COOKIE}

${PATCH_COOKIE}:	${EXTRACT_COOKIE}
	${MAKE} -f ${MAKEFILE} patch
	${TOUCH} ${PATCH_COOKIE}

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	${MAKE} -f ${MAKEFILE} configure
	${TOUCH} ${CONFIGURE_COOKIE}

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	${MAKE} -f ${MAKEFILE} build
	${TOUCH} ${BUILD_COOKIE}

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	${MAKE} -f ${MAKEFILE} install
	${TOUCH} ${INSTALL_COOKIE}
