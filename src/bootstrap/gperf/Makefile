#
# bootstrap makefile for building GNU gperf
# $Id: Makefile,v 1.2 2001/02/22 13:04:21 kunishi Exp $
#

TARGET_CMD=	gperf

include ../config.mk
include ../rule.mk

patch:
	@${DO_NADA}

configure:	${PATCH_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ${GNU_CONFIGURE} ${CONFIGURE_ARGS}

build:		${CONFIGURE_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} ${BUILD_TARGET}

install:	${BUILD_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && ${INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} ${INSTALL_TARGET}

clean::
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} ${CLEAN_TARGET}
