#
# bootstrap makefile for building bmake
# $Id: Makefile,v 1.2 2001/02/22 13:04:21 kunishi Exp $
#

TARGET_CMD=	bmake

include ../config.mk
include ../rule.mk

EXTRA_MAKEFLAGS= -f makefile.boot
EXTRA_BUILDFLAGS= XDEFS='-D_PATH_DEFSYSMK=\"${SYSMK}\" -D_PATH_DEFSYSPATH=\"${SYSPATH}\"'
INSTALL_TARGET=	install install-mk

SYSPATH=	/usr/share/mk:${PREFIX}/share/mk:/usr/local/share/mk:/opt/share/mk
SYSMK=		/usr/share/sys/sys.mk

patch:
	${DO_NADA}

configure:	${PATCH_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${CONFIGURE_ENV} ${GNU_CONFIGURE} ${CONFIGURE_ARGS}

build:		${CONFIGURE_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${MAKE_ENV} ${GMAKE} ${EXTRA_MAKEFLAGS} ${EXTRA_BUILDFLAGS} ${BUILD_TARGET}

install:	${BUILD_COOKIE}
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${INSTALL_ENV} ${GMAKE} ${EXTRA_MAKEFLAGS} ${MAKE_INSTALL_ARGS} ${INSTALL_TARGET}

clean::
	@cd ${WORKDIR}/${TARGET_CMD} && \
	  ${MAKE_ENV} ${GMAKE} ${EXTRA_MAKEFLAGS} ${CLEAN_TARGET}
