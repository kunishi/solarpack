#
# $Id: Makefile,v 1.3 2000/09/27 01:27:50 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	libungif
VERSION=	4.1.0b1
PORTREV=	1

PKG=	OPENungif
NAME=	Tools and library routines for working GIF images
VENDOR=	Toshio Kuratomi <badger@prtr-13.ucsc.edu>

MASTER_SITES=	ftp://prtr-13.ucsc.edu/pub/libungif/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/UNCOMPRESSED_GIF ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>
