#
# $Id: Makefile,v 1.6 2000/01/06 04:59:37 kunishi Exp $
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
	${RM} ${TARGET}
