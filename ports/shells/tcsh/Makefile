#
# $Id: Makefile,v 1.2 2000/01/19 01:38:20 kunishi Exp $
#

PKG=		OPENtcsh
NAME=		tcsh, and extended C-shell with many useful features
VERSION=	6.09
VENDOR=		Christos Zoulas <christos@gw.com>

DISTNAME =	tcsh-${VERSION}
PKGNAME=	tcsh-6.09.00
MASTER_SITES =	ftp://ftp.ccs.dendai.ac.jp/pub/misc/shell/tcsh/ \
		ftp://ftp.astron.com/pub/tcsh/

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PKGNAME}
INSTALL_TARGET=		install install.man

CLASS_SHELL=	bin/tcsh

.include <port.mk>
