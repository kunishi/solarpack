#
# $Id: Makefile,v 1.1 2000/05/17 13:06:14 kunishi Exp $
#

PORTNAME=	bzip2
VERSION=	0.9.5d
PORTREV=	1

PKG=		OPENbzip2
NAME=		a block-sorting file compressor

VENDOR=		http://sourceware.cygnus.com/bzip2/
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v095/ \
		http://www.kernel.org/pub/software/utils/compress/bzip2/

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/manual* ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTPREFIX}/bin/bzip2 ${INSTPREFIX}/share/doc/${PORTNAME}/manual.ps

.include <port.mk>
