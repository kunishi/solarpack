#
# $Id: Makefile,v 1.2 2001/03/02 14:37:08 kunishi Exp $
#

PORTNAME=	openssh
VERSION=	2.5.1p1
PORTREV=	1

PKG=		OPENssh
NAME=		a free version of SSH, originated from OpenBSD Project

MASTER_SITES=	ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
		ftp://ftp.jp.openbsd.org/pub/OpenBSD/OpenSSH/portable/

LIB_DEPENDS=	OPENssl:${PORTSDIR}/security/openssl
RUN_DEPENDS=	OPENaskpx:${PORTSDIR}/security/x11-ssh-askpass

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
