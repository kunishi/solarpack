#
# $Id: Makefile,v 1.2 2003/02/26 11:00:42 kunishi Exp $
#

PORTNAME=	lcms
VERSION=	1.08
PORTREV=	1

PKG=		OPUClcms
NAME=		Light Color Management System: a color management library

MASTER_SITES=	http://www.littlecms.com/
WRKSRC=		${WRKDIR}/${DISTNAME}/src

post-patch:
	cd ${WRKSRC}; \
	  ${LN} -s ../include/lcms.h .; \
	  ${LN} -s ../include/icc34.h .

pre-install:
	${MKDIR} ${INSTPREFIX}/lib ${INSTPREFIX}/include/lcms

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/lcms
	${CP} -rp ${WRKSRC}/doc/* ${WRKSRC}/samples/tifficc.c \
	  ${WRKSRC}/samples/wtpt.c ${WRKSRC}/samples/neutral.c \
	  ${INSTPREFIX}/share/doc/lcms/

.include <port.mk>
