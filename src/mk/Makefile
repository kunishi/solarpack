#
# $Id: Makefile,v 1.10 2001/03/23 06:56:27 kunishi Exp $
#

WORKDIR=	${TOPDIR}/work

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${WORKDIR}${LOCALBASE}/share/mk/

TARGET=	port.mk port.pre.mk port.subdir.mk soap.conf

install:
	${INSTALL_DATA} ${TARGET} ${SYSMKDIR}

clean:
	${RM} ${TARGET}
