#
# $Id: Makefile,v 1.5 2000/06/07 05:50:12 kunishi Exp $
#

PORTNAME=	makejvf
VERSION=	1.0
PORTREV=	1

PKG=		OPENmkjvf
NAME=		A utility for making Japanese virtual fonts for ASCII pTeX

VENDOR=		ASCII Corp., Inc. <http://www.ascii.co.jp/>
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/jvf/

ALL_TARGET=	${PORTNAME}

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/makejvf ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/share/doc/makejvf
	${INSTALL_DATA} ${WRKSRC}/README.txt ${INSTPREFIX}/share/doc/makejvf

.include <port.mk>
