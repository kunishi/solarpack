#
# $Id: Makefile,v 1.2 1999/06/06 06:46:12 kunishi Exp $
#

PKG=		OPENmkjvf
NAME=		A utility for making Japanese virtual fonts for ASCII pTeX
VERSION=	1.0
VENDOR=		ASCII Corp., Inc. <http://www.ascii.co.jp/>

DISTNAME=	makejvf-${VERSION}
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/jvf/

do-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/makejvf ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/share/doc/makejvf
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRK_BASEDIR}/share/doc/makejvf

.include <port.mk>
