#
# $Id: Makefile,v 1.11 2001/04/18 14:33:11 kunishi Exp $
#

WORKDIR=	${TOPDIR}/work

INSTALL=	/usr/ucb/install
INSTALL_DATA=	${INSTALL} -c -m 644 -o root -g bin
RM=	/usr/bin/rm -f
SED=	/usr/bin/sed

SYSMKDIR=	${WORKDIR}${LOCALBASE}/share/mk/
ETCDIR=		${WORKDIR}/etc/

SYSMKTARGET=	port.mk port.pre.mk port.subdir.mk
ETCTARGET=	solarpack.conf
TARGET=		${SYSMKTARGET} ${ETCTARGET}

install:
	${INSTALL_DATA} ${SYSMKTARGET} ${SYSMKDIR}
	${INSTALL_DATA} ${ETCTARGET} ${ETCDIR}

clean:
	${RM} ${TARGET}
