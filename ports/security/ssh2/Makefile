#
# $Id: Makefile,v 1.8 2000/09/27 01:27:57 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ssh2
VERSION=	2.3.0
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
CONFIGURE_ARGS+=	--disable-compiler-optimizations
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	etcdir=${WRKDIR}/etc/ssh2

pre-install:
	${MKDIR} ${WRKDIR}/etc/ssh2

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${FILESDIR}/sshd2 ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/sshd2_config ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/ssh2_config ${INSTPREFIX}/share/examples/ssh2

.include <port.mk>
