#
# $Id: Makefile,v 1.8 2000/06/06 04:51:29 kunishi Exp $
#

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${INSTDIR}${LOCALBASE}/share/mk/

TARGET=	port.mk port.subdir.mk soap.conf

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} ${TARGET}
