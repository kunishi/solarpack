#
# $Id: Makefile,v 1.1 1999/08/26 08:00:25 kunishi Exp $
#

PKG=		OPENssh1
NAME=		Secure shell version 1
VERSION=	1.2.27
VENDOR=		SSH Communications Security, Espoo, Finland, http://www.cs.hut.fi/ssh

DISTNAME=	ssh-${VERSION}
MASTER_SITES=	ftp://ftp.cs.hut.fi/pub/ssh/

GNU_CONFIGURE=	yes
MAKE_INSTALL_ENV+=	prefix=${LOCALBASE} \
			install_prefix=${WRKDIR}

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/ssh1
	${INSTALL_DATA} ${FILESDIR}/sshd1 ${INSTPREFIX}/share/examples/ssh1
	${INSTALL_DATA} ${WRKSRC}/host_config.sample ${INSTPREFIX}/share/examples/ssh1
	${INSTALL_DATA} ${WRKSRC}/server_config.sample ${INSTPREFIX}/share/examples/ssh1

.include <port.mk>
