#
# $Id: Makefile,v 1.7 2000/05/17 01:50:07 kunishi Exp $
#

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${INSTDIR}${LOCALBASE}/share/mk/

TARGET=	port.mk soap.conf

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} ${TARGET}
