#
# bootstrap makefile for building texinfo
# $Id: Makefile,v 1.3 2001/03/23 06:56:27 kunishi Exp $
#

TARGET_CMD=	texinfo

include ../config.mk
include ../rule.mk

EXTRA_CONFIGURE_ENV=	CFLAGS="-g -O" CXXFLAGS="-g -O" \
			ac_cv_header_ncurses_termcap_h="no" \
			ac_cv_lib_ncurses_tgetent="no"
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
