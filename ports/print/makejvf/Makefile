#
# $Id: Makefile,v 1.3 1999/06/09 02:35:58 kunishi Exp $
#

PKG=		OPENmkjvf
NAME=		A utility for making Japanese virtual fonts for ASCII pTeX
VERSION=	1.0
VENDOR=		ASCII Corp., Inc. <http://www.ascii.co.jp/>

DISTNAME=	makejvf-${VERSION}
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/jvf/

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/makejvf ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/share/doc/makejvf
	${INSTALL_DATA} ${WRKSRC}/README.txt ${INSTPREFIX}/share/doc/makejvf

.include <port.mk>
