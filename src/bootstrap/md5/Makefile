#
# bootstrap makefile for building md5
# $Id: Makefile,v 1.2 2001/02/22 13:04:22 kunishi Exp $
#

TARGET_CMD=	md5

include ../config.mk
include ../rule.mk

patch:
	@${DO_NADA}

configure:	${PATCH_COOKIE}
	@${DO_NADA}

build:		${CONFIGURE_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} CC=${CC}

install:	${BUILD_COOKIE}
	${INSTALL_PROGRAM} ${WORKDIR}/${TARGET_CMD}/md5 ${TMPPREFIX}/bin

clean::
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} ${CLEAN_TARGET}
