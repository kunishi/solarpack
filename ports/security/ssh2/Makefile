#
# $Id: Makefile,v 1.6 2000/09/07 07:31:22 kunishi Exp $
#

ARCH!=		/usr/bin/mach

PORTNAME=	ssh2
VERSION=	2.2.0
PORTREV=	2

PKG=		OPENssh2
NAME=		Secure shell version 2

VENDOR=		SSH Communications Security Ltd., Finland <http://www.ssh.fi/>.
DISTNAME=	ssh-${VERSION}
MASTER_SITES=	ftp://ftp.ssh.com/pub/ssh/

GNU_CONFIGURE=	yes
.if (${ARCH} == "i386")
CONFIGURE_ARGS+=	--disable-asm
.endif
USE_GMAKE=	yes

RUN_DEPENDS=	OPENssh1:${PORTSDIR}/security/ssh1

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${FILESDIR}/sshd2 ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/sshd2_config ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/ssh2_config ${INSTPREFIX}/share/examples/ssh2

.include <port.mk>
