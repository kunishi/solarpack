#
# $Id: Makefile,v 1.1 2000/11/19 07:35:26 kunishi Exp $
#

PORTNAME=	openssh
VERSION=	2.2.0p1
PORTREV=	1

PKG=		OPENssh
NAME=		a free version of SSH, originated from OpenBSD Project

MASTER_SITES=	ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
		ftp://ftp.jp.openbsd.org/pub/OpenBSD/OpenSSH/portable/

LIB_DEPENDS=	OPENssl:${PORTSDIR}/security/openssl

USE_ZLIB=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-ssl-dir=${LOCALBASE}/ssl
INSTALL_TARGET=	manpages install-files

CLASS_INITD=	share/examples/openssh/opensshd

PIDDIR=		/var/run

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/openssh
	${SED} -e 's|%%PIDDIR%%|${PIDDIR}|g' < ${WRKSRC}/contrib/solaris/sshd-initscript.in > ${INSTPREFIX}/share/examples/openssh/opensshd

.include <port.mk>
