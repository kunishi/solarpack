#
# common rule for Solaris APDK, standard Solaris make version
# $Id: rule.mk,v 1.5 2001/04/18 14:33:07 kunishi Exp $
#

.PHONY:	patch configure build install

install:=	PREFIX=${TMPPREFIX}

${PATCH_COOKIE}:
	@${MAKE_ENV} ${MAKE} ${MAKEFLAGS} patch
	@${TOUCH} ${PATCH_COOKIE}

${CONFIGURE_COOKIE}:	${PATCH_COOKIE}
	@${MAKE_ENV} ${MAKE} ${MAKEFLAGS} configure
	@${TOUCH} ${CONFIGURE_COOKIE}

${BUILD_COOKIE}:	${CONFIGURE_COOKIE}
	@${MAKE_ENV} ${MAKE} ${MAKEFLAGS} build
	@${TOUCH} ${BUILD_COOKIE}

${INSTALL_COOKIE}:	${BUILD_COOKIE}
	@${MAKE_ENV} ${MAKE} ${MAKEFLAGS} install
	@${TOUCH} ${INSTALL_COOKIE}

clean::
	@${RM} ${PATCH_COOKIE} ${CONFIGURE_COOKIE} ${BUILD_COOKIE} ${INSTALL_COOKIE}
