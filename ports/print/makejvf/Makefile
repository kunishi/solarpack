#
# $Id: Makefile,v 1.1 1999/05/20 04:53:54 kunishi Exp $
#

DISTNAME=	makejvf-1.0
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/jvf/

do-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/makejvf ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/share/doc/makejvf
	${INSTALL_DATA} ${WRKSRC}/README.txt ${WRK_BASEDIR}/share/doc/makejvf

.include <port.mk>
