#
# $Id: Makefile,v 1.2 2000/06/01 09:41:03 kunishi Exp $
#

PORTNAME=	microsoft-ttfont
VERSION=	1.0
PORTREV=	1

PKG=	MSttjfn
NAME=	Microsoft Japanese TrueType fonts
VENDOR=	Microsoft Corp.

DISTNAME=	#
MASTER_SITES=	ftp://${USER}@bloodstone.c.oka-pu.ac.jp/%2Fexport/share/fonts/truetype/microsoft/
DISTFILES=	msmincho.ttc msgothic.ttc
WRKSRC=		${WRKDIR}

BUILD_DEPENDS=	OPENvflib:${PORTSDIR}/print/VFlib2

FONTDIR=	${INSTPREFIX}/share/fonts/truetype

do-extract:
	${MKDIR} ${WRKSRC}
	${CP} ${DISTDIR}/msmincho.ttc ${WRKSRC}
	${CP} ${DISTDIR}/msgothic.ttc ${WRKSRC}

do-build:
	cd ${WRKSRC}; \
	${LOCALBASE}/bin/ttindex msmincho.ttc; \
	${LOCALBASE}/bin/ttindex msgothic.ttc

do-install:
	${MKDIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/msmincho.ttc ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/msmincho.tti ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/msgothic.ttc ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/msgothic.tti ${FONTDIR}

.include <port.mk>
