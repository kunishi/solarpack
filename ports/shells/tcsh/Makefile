#
# $Id: Makefile,v 1.4 2000/06/05 08:57:56 kunishi Exp $
#

PORTNAME=	tcsh
VERSION=	6.09.00
PORTREV=	1

PKG=		OPENtcsh
NAME=		tcsh, and extended C-shell with many useful features
VENDOR=		Christos Zoulas <christos@gw.com>

DISTNAME=	${PORTNAME}-6.09
MASTER_SITES =	ftp://ftp.ccs.dendai.ac.jp/pub/misc/shell/tcsh/ \
		ftp://ftp.astron.com/pub/tcsh/

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/tcsh-${VERSION}
INSTALL_TARGET=		install install.man

CLASS_SHELL=	bin/tcsh

.include <port.mk>
