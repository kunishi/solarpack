#
# $Id: Makefile,v 1.11 2003/02/27 07:10:34 kunishi Exp $
#

PORTNAME=	openssh
VERSION=	3.7.1p1
PORTREV=	1

PKG=		OPUCopssh
NAME=		a free version of SSH, originated from OpenBSD Project

MASTER_SITES=	ftp://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/ \
		ftp://ftp.jp.openbsd.org/pub/OpenBSD/OpenSSH/portable/

LIB_DEPENDS=	OPUCopssl:${PORTSDIR}/security/openssl
RUN_DEPENDS=	OPUCaskpx:${PORTSDIR}/security/x11-ssh-askpass

USE_ZLIB=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-ssl-dir=${LOCALBASE}/ssl
INSTALL_TARGET=	install-nokeys
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR}
PREFIX_AS_INSTPREFIX=	yes

CLASS_INITD=	share/examples/openssh/opensshd

PIDDIR=		/var/run

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/openssh
	${SED} -e 's|%%openSSHDir%%|${PREFIX}|g' \
	       -e 's|%%configDir%%|${PREFIX}/etc|g' \
	       -e 's|%%pidDir%%|${PIDDIR}|g' \
	       < ${WRKSRC}/contrib/solaris/opensshd.in \
	       > ${INSTPREFIX}/share/examples/openssh/opensshd

.include <port.mk>
