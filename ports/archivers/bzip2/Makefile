#
# $Id: Makefile,v 1.6 2002/03/18 08:57:32 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	bzip2
VERSION=	1.0.2
PORTREV=	2

PKG=		OPUCbzip2
NAME=		a block-sorting file compressor

VENDOR=		http://sourceware.cygnus.com/bzip2/
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v102/

pre-build:
	cd ${WRKSRC}; \
	  ${ENV} ${MAKE_ENV} ${MAKE} ${MAKE_ARGS} -f Makefile-libbz2_so

post-install:
	${MKDIR} ${INSTPREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/libbz2.so.${VERSION} ${INSTPREFIX}/lib
	${LN} -sf libbz2.so.1.0.2 ${INSTPREFIX}/lib/libbz2.so.1
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/manual* ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTPREFIX}/bin/bzip2 ${INSTPREFIX}/share/doc/${PORTNAME}/manual.ps

.include <port.mk>
