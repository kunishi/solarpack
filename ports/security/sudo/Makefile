#
# $Id: Makefile,v 1.5 2000/09/27 01:27:57 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	sudo
VERSION=	1.6.3p4
PORTREV=	1

PKG=		OPENsudo
NAME=		CU version of sudo

VENDOR=		http://www.courtesan.com/
MASTER_SITES=	ftp://ftp.cs.colorado.edu/pub/sysadmin/sudo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INSTALL_TARGET=	install-dirs install-binaries install-man

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/sudo
	${INSTALL_DATA} ${WRKSRC}/sudoers ${INSTPREFIX}/share/examples/sudo

.include <port.mk>
