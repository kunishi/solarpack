#
# $Id: Makefile,v 1.3 2000/09/27 01:27:38 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	bzip2
VERSION=	1.0.0
PORTREV=	1

PKG=		OPENbzip2
NAME=		a block-sorting file compressor

VENDOR=		http://sourceware.cygnus.com/bzip2/
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v100/ \
		http://www.kernel.org/pub/software/utils/compress/bzip2/

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/manual* ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTPREFIX}/bin/bzip2 ${INSTPREFIX}/share/doc/${PORTNAME}/manual.ps

.include <port.mk>
