#
# bootstrap makefile for building texinfo
# $Id: Makefile,v 1.2 2001/02/22 13:04:23 kunishi Exp $
#

TARGET_CMD=	texinfo

include ../config.mk
include ../rule.mk

EXTRA_CONFIGURE_ENV=	CFLAGS="-g -O" CXXFLAGS="-g -O"
EXTRA_CONFIGURE_ARGS=	--with-included-gettext
CLEAN_TARGET=		distclean

patch:
	@${DO_NADA}

configure:	${PATCH_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ${EXTRA_CONFIGURE_ENV} ${GNU_CONFIGURE} ${CONFIGURE_ARGS} ${EXTRA_CONFIGURE_ARGS}

build:		${CONFIGURE_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} ${BUILD_TARGET}

install:	${BUILD_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} ${INSTALL_TARGET}

clean::
	@cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} ${CLEAN_TARGET}
