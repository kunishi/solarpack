#
# bootstrap makefile for building bmake
# $Id: Makefile,v 1.1 2001/02/22 08:38:02 kunishi Exp $
#

TARGET_CMD=	bmake

include ../config.mk
include ../rule.mk

patch:
	${DO_NADA}

configure:	${PATCH_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && ${CONFIGURE_ENV} ./configure --prefix=${PREFIX}

build:		${CONFIGURE_COOKIE}
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} -f makefile.boot \
	  XDEFS='-D_PATH_DEFSYSMK=\"/usr/share/mk/sys.mk\" -D_PATH_DEFSYSPATH=\"/usr/share/mk:${PREFIX}/share/mk:/usr/local/share/mk:/opt/share/mk\"'

install:	${BUILD_COOKIE}
	if [ ! -f ${INSTALL_COOKIE} ]; then \
	  cd ${WORKDIR}/${TARGET_CMD} && ${INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} -f makefile.boot install install-mk; \
	fi
	${TOUCH} ${INSTALL_COOKIE}

clean::
	cd ${WORKDIR}/${TARGET_CMD} && ${MAKE_ENV} ${GMAKE} -f makefile.boot clean
