#
# $Id: Makefile,v 1.1 2001/11/12 12:35:30 kunishi Exp $
#

PORTNAME=	lcms
VERSION=	1.07
PORTREV=	1

PKG=		OPUClcms
NAME=		Light Color Management System: a color management library

MASTER_SITES=	http://www.littlecms.com/

post-patch:
	cd ${WRKSRC}; \
	  ${LN} -s ../src/lcms.h ./testbed; \
	  ${LN} -s ../src/icc34.h ./testbed

pre-install:
	${MKDIR} ${INSTPREFIX}/lib ${INSTPREFIX}/include/lcms

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/lcms
	${CP} -rp ${WRKSRC}/doc/* ${WRKSRC}/samples/tifficc.c \
	  ${WRKSRC}/samples/wtpt.c ${WRKSRC}/samples/neutral.c \
	  ${INSTPREFIX}/share/doc/lcms/

.include <port.mk>
