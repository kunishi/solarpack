#
# $Id: Makefile,v 1.3 2000/05/17 06:42:48 kunishi Exp $
#

PORTNAME=	ssh2
VERSION=	2.0.13
PORTREV=	1

PKG=		OPENssh2
NAME=		Secure shell version 2

VENDOR=		SSH Communications Security Ltd., Finland <http://www.ssh.fi/>.
DISTNAME=	ssh-${VERSION}
MASTER_SITES=	ftp://ftp.cs.hut.fi/pub/ssh/ \
		ftp://ftp.kyoto.wide.ad.jp/pub/security/ssh/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

RUN_DEPENDS=	OPENssh1:${PORTSDIR}/security/ssh1

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${FILESDIR}/sshd2 ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/sshd2_config ${INSTPREFIX}/share/examples/ssh2
	${INSTALL_DATA} ${WRKSRC}/apps/ssh/ssh2_config ${INSTPREFIX}/share/examples/ssh2

.include <port.mk>
