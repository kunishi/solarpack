#
# $Id: Makefile,v 1.2 2000/01/25 13:40:08 kunishi Exp $
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

CLASS_INITD=	share/examples/ssh1/sshd1
PROTOTYPE_IGNORE_FILES=	bin/make-ssh-known-hosts \
			bin/scp \
			bin/slogin \
			bin/ssh-add \
			bin/ssh-agent \
			bin/ssh-askpass \
			bin/ssh-keygen \
			bin/ssh \
			man/man1/make-ssh-known-hosts.1 \
			man/man1/scp.1 \
			man/man1/slogin.1 \
			man/man1/ssh-add.1 \
			man/man1/ssh-agent.1 \
			man/man1/ssh-keygen.1 \
			man/man1/ssh.1 \
			man/man8/sshd.8 \
			sbin/sshd

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/ssh1
	${INSTALL_DATA} ${FILESDIR}/sshd1 ${INSTPREFIX}/share/examples/ssh1
	${INSTALL_DATA} ${WRKSRC}/host_config.sample ${INSTPREFIX}/share/examples/ssh1
	${CAT} ${WRKSRC}/server_config.sample | ${SED} -e 's|_ETCDIR_|/etc|g' \
	  > ${INSTPREFIX}/share/examples/ssh1/server_config.sample

.include <port.mk>
