#
# $Id: Makefile,v 1.2 2000/09/21 12:34:15 kunishi Exp $
#

PORTNAME=	rxvt
VERSION=	2.7.5
PORTREV=	1

PKG=		OPENjrxvt
NAME=		An xterm replacement that supports pixmap background and Japanese

VENDOR=		http://www.rxvt.org/
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/

LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm

USE_X_PREFIX=	yes
GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
CONFIGURE_ENV+=	CPPFLAGS="-DSVR4"
CONFIGURE_ARGS+= \
	--enable-xpm-background --enable-transparency \
	--enable-menubar --enable-graphics --enable-xim \
	--enable-languages --with-encoding=EUCJ \
	--disable-backspace-key --disable-delete-key

pre-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/man/man1

post-install:
	${CHMOD} 4711 ${INSTPREFIX}/bin/rxvt

.include <port.mk>
