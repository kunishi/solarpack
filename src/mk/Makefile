#
# $Id: Makefile,v 1.1 1999/06/09 02:21:09 kunishi Exp $
#

SED=	/usr/bin/sed
INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin

SYSMKDIR=	/usr/local/share/mk/

TARGET=	port.mk

port.mk:	port.mk.in
	${SED} -e 's!@PKGBUILDDIR@!${PKGBUILDDIR}!' $@.in > $@

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}
