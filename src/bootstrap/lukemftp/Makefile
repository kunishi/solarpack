#
# Bootstrap makefile for building lukemftp
# $Id: Makefile,v 1.1 2001/02/22 08:38:03 kunishi Exp $
#

TARGET_CMD=	lukemftp

include ../config.mk
include ../rule.mk

patch:
	${DO_NADA}

configure:	${PATCH_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ./configure --prefix=${PREFIX}

build:		${CONFIGURE_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE}

install:	${BUILD_COOKIE}
	if [ ! -f ${INSTALL_COOKIE} ]; then \
	  cd ${WORKDIR}/${TARGET_CMD} && ${INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} install; \
	fi
	${TOUCH} ${INSTALL_COOKIE}

clean::
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} distclean
