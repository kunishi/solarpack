#
# $Id: Makefile,v 1.4 2001/03/30 01:33:55 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	microsoft-ttfont
VERSION=	1.0
PORTREV=	1

PKG=	MSttjfn
NAME=	Microsoft Japanese TrueType fonts
VENDOR=	Microsoft Corp.

DISTNAME=	#
MASTER_SITES=	file:///share/pub/fonts/truetype/microsoft/
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
