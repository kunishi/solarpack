#
# $Id: Makefile,v 1.3 1999/06/09 10:37:13 kunishi Exp $
#

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${INSTDIR}${LOCALBASE}/share/mk/

TARGET=	port.mk pkgbuild.conf

port.mk:	port.mk.in
	${SED} -e 's!@PKGBUILDDIR@!${PKGBUILDDIR}!' $@.in > $@

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} port.mk
