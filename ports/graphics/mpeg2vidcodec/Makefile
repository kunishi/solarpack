#
# $Id: Makefile,v 1.1 2001/11/12 12:34:28 kunishi Exp $
#

PORTNAME=	mpeg2vidcodec
VERSION=	12
PORTREV=	1

PKG=		OPUCmp2vc
NAME=		Mpeg2 Video Codec

MASTER_SITES=	ftp://ftp.mpeg.org/pub/mpeg/mssg/
DISTNAME=	${PORTNAME}_v${VERSION}
WRKSRC=		${WRKDIR}/mpeg2/

pre-install:
	${MKDIR} ${INSTPREFIX}/bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mpeg2dec/mpeg2decode ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/mpeg2enc/mpeg2encode ${INSTPREFIX}/bin

.include <port.mk>
