#
# $Id: Makefile,v 1.4 2003/02/27 06:36:00 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	libungif
VERSION=	4.1.0
PORTREV=	1

PKG=	OPUCungif
NAME=	Tools and library routines for working GIF images
VENDOR=	Toshio Kuratomi <badger@prtr-13.ucsc.edu>

MASTER_SITES=	http://metalab.unc.edu/pub/Linux/libs/graphics/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/UNCOMPRESSED_GIF ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>
