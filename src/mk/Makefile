#
# $Id: Makefile,v 1.5 1999/12/28 05:04:55 kunishi Exp $
#

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${INSTDIR}${LOCALBASE}/share/mk/

TARGET=	port.mk solpkg.conf

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} port.mk
