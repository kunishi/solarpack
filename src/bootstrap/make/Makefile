#
# bootstrap makefile for building gmake
# $Id: Makefile,v 1.2 2001/02/22 13:04:22 kunishi Exp $
#

TARGET_CMD=	make

include ../config.mk
include ../rule.mk

install:=	GMAKE=./make
EXTRA_CONFIGURE_ARGS=	--program-prefix=g
CLEAN_TARGET=	distclean

patch:
	@${DO_NADA}

configure:	${PATCH_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ${GNU_CONFIGURE} ${CONFIGURE_ARGS} ${EXTRA_CONFIGURE_ARGS}

build:		${CONFIGURE_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} ${BUILD_TARGET}

install:	${BUILD_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} ${INSTALL_TARGET}

clean::
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} ${CLEAN_TARGET}
