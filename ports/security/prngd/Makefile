#
# $Id: Makefile,v 1.1 2003/01/31 01:59:33 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	prngd
VERSION=	0.9.27
PORTREV=	1

PKG=		OPUCprngd
NAME=		A pseudo random number generator daemon

MASTER_SITES=	ftp://ftp.aet.tu-cottbus.de/pub/postfix_tls/related/prngd/ \
		ftp://ftp.ayamura.org/pub/prngd/

ALL_TARGET=	prngd
CLASS_INITD=	share/doc/prngd/contrib/Solaris-8/prngd
# start before openssh, kill after opensshd
INITD_START_NUM=	98
INITD_KILL_NUM=		43

do-install:
	${MKDIR} ${INSTPREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/prngd ${INSTPREFIX}/sbin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/prngd.man ${INSTPREFIX}/man/man1
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/00* ${INSTPREFIX}/share/doc/${PORTNAME}
	(cd ${WRKSRC}; tar cf - contrib) | \
		(cd ${INSTPREFIX}/share/doc/${PORTNAME}; tar xfBp -)
	${MKDIR} ${INSTPREFIX}/etc/prngd
	${INSTALL_DATA} ${WRKSRC}/contrib/Solaris-7/prngd.conf.solaris-7 \
	  ${INSTPREFIX}/etc/prngd/prngd.conf

.include <port.mk>
