#
# bootstrap makefile for building md5
# $Id: Makefile,v 1.1 2001/02/22 08:38:03 kunishi Exp $
#

TARGET_CMD=	md5

include ../config.mk
include ../rule.mk

patch:
	${DO_NADA}

configure:	${PATCH_COOKIE}
	${DO_NADA}

build:		${CONFIGURE_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} CC=${CC}

install:	${BUILD_COOKIE}
	if [ ! -f ${INSTALL_COOKIE} ]; then \
	  ${INSTALL_PROGRAM} ${WORKDIR}/${TARGET_CMD}/md5 ${TMPPREFIX}/bin; \
	fi
	${TOUCH} ${INSTALL_COOKIE}

clean::
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} clean
