#
# $Id: Makefile,v 1.7 2003/01/28 04:23:43 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	sudo
VERSION=	1.6.6
PORTREV=	2

PKG=		OPUCsudo
NAME=		CU version of sudo

VENDOR=		http://www.courtesan.com/sudo/
MASTER_SITES=	http://www.courtesan.com/sudo/dist/ \
		ftp://ftp.cs.colorado.edu/pub/sysadmin/sudo/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INSTALL_TARGET=	install-dirs install-binaries install-man

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/sudo
	${INSTALL_DATA} ${WRKSRC}/sudoers ${INSTPREFIX}/share/examples/sudo

.include <port.mk>
