#
# $Id: Makefile,v 1.1 2001/11/30 12:49:05 kunishi Exp $
#

PORTNAME=	boehm-gc
VERSION=	6.0
PORTREV=	1

PKG=		OPUCboegc
NAME=		a garbage collection and memory leak detection libraries

MASTER_SITES=	http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/
DISTNAME=	gc${VERSION}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

pre-install:
	@${MKDIR} ${INSTPREFIX}/include
	@${MKDIR} ${INSTPREFIX}/man/man3

post-install:
	${INSTALL_DATA} ${WRKSRC}/include/gc.h ${INSTPREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/include/gc_cpp.h ${INSTPREFIX}/include
	${INSTALL_MAN} ${WRKSRC}/doc/gc.man ${INSTPREFIX}/man/man3/gc.3

.include <port.mk>
