#
# $Id: Makefile,v 1.5 2001/11/10 15:46:36 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	bzip2
VERSION=	1.0.1
PORTREV=	2

PKG=		OPUCbzip2
NAME=		a block-sorting file compressor

VENDOR=		http://sourceware.cygnus.com/bzip2/
MASTER_SITES=	ftp://sourceware.cygnus.com/pub/bzip2/v100/ \
		http://www.kernel.org/pub/software/utils/compress/bzip2/

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/manual* ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTPREFIX}/bin/bzip2 ${INSTPREFIX}/share/doc/${PORTNAME}/manual.ps

.include <port.mk>
