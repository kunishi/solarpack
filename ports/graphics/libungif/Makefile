#
# $Id: Makefile,v 1.1 2000/05/17 12:13:46 kunishi Exp $
#

PORTNAME=	libungif
VERSION=	4.1.0
PORTREV=	1

PKG=	OPENungif
NAME=	Tools and library routines for working GIF images

VENDOR=	http://prtr-13.ucsc.edu/~badger/software/libungif/
MASTER_SITES=	ftp://metalab.unc.edu/pub/Linux/libs/graphics/ \
		ftp://prtr-13.ucsc.edu/pub/libungif/

PATCH_SITES=	http://www.arrakeen.demon.co.uk/giflib/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/distfiles/
PATCHFILES=	libungif-4.1.0-19990224.patch.gz \
		libungif-4.1.0-19990305.patch.gz \
		libungif-4.1.0-19990322.patch.gz \
		libungif-4.1.0-19990523.patch.gz
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/UNCOMPRESSED_GIF ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>
