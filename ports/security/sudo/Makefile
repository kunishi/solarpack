#
# $Id: Makefile,v 1.1 2000/01/21 10:23:31 kunishi Exp $
#

PKG=		OPENsudo
NAME=		CU version of sudo
VERSION=	1.6.1
VENDOR=		http://www.courtesan.com/

DISTNAME=	sudo-${VERSION}
MASTER_SITES=	ftp://ftp.cs.colorado.edu/pub/sysadmin/sudo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INSTALL_TARGET=	install-dirs install-binaries install-man

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/sudo
	${INSTALL_DATA} ${WRKSRC}/sudoers ${INSTPREFIX}/share/examples/sudo

.include <port.mk>
