#
# $Id: Makefile,v 1.2 1999/06/09 02:21:53 kunishi Exp $
#

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	/usr/local/share/mk/

TARGET=	port.mk

port.mk:	port.mk.in
	${SED} -e 's!@PKGBUILDDIR@!${PKGBUILDDIR}!' $@.in > $@

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} ${TARGET}
