#
# $Id: Makefile,v 1.3 2000/06/22 02:14:20 kunishi Exp $
#

PORTNAME=	zoularis
VERSION=	20000512
PORTREV=	1

PKG=		NBSDzoul
NAME=		zoularis, provides NetBSD libs, includes and utilities on Solaris
VENDOR=		NetBSD Org., http://www.netbsd.org/

MASTER_SITES=	ftp://ftp.netbsd.org/pub/NetBSD/packages/distfiles/

WRKSRC=		${WRKDIR}/${PORTNAME}/bsd
USE_PERL5=	yes
INSTALL_TARGET=	all
MAKE_INSTALL_ARGS+=	CC=${LOCALBASE}/bin/gcc

PROTOTYPE_IN=	${PKGDIR}/prototype.in.${ARCH}
PREFIX=		${LOCALBASE}/bsd
INSTPREFIX=	${LOCALBASE}/bsd
NETBSD_SRCDIR?=	/export/NetBSD/src

post-extract:
	@${ECHO_MSG} 'This ports requires NetBSD full source tree.'
	@${ECHO_MSG} 'Make sure the sources are extracted in ${NETBSD_SRCDIR}.'
	@${ECHO_MSG} 'If you want to extract them other directory,'
	@${ECHO_MSG} 'run this ports with specifying NETBSD_SRCDIR as the directory.'

do-configure:
	${PERL} -pi -e \
	  's|^BSDSRCDIR=.*|BSDSRCDIR=${NETBSD_SRCDIR}|; \
	   s|^#MACHINE=${ARCH}|MACHINE=${ARCH}|; \
	   s|^#MACHINE_ARCH=${ARCH}|MACHINE_ARCH=${ARCH}|;' \
	   ${WRKSRC}/Makefile.inc

do-build:
	@${ECHO_MSG} 'all the building this ports is done in install phase.'
	@${ECHO_MSG} 'Make sure install phase must be done with root priviledge.'

.include <port.mk>
