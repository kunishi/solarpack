#
# bootstrap makefile for building gmake
# $Id: Makefile,v 1.1 2001/02/22 08:38:03 kunishi Exp $
#

TARGET_CMD=	make

include ../config.mk
include ../rule.mk

all:	build

patch:
	${DO_NADA}

configure:	${PATCH_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ./configure --prefix=${PREFIX} --program-prefix=g

build:		${CONFIGURE_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE}

install:	${BUILD_COOKIE}
	if [ ! -f ${INSTALL_COOKIE} ]; then \
	  cd ${WORKDIR}/${TARGET_CMD} && ${INSTALL_ENV} ./make ${MAKE_INSTALL_ARGS} install; \
	fi
	${TOUCH} ${INSTALL_COOKIE}

clean::
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${MAKE} distclean
