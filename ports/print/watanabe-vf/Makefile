#
# $Id: Makefile,v 1.2 2000/09/27 01:27:56 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	watanabe-vf
VERSION=	1.0
PORTREV=	1

PKG=		OPENwatvf
NAME=		Watanabe Japanese VF font

MASTER_SITES=	ftp://ftp.jp.freebsd.org/pub/FreeBSD/distfiles/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.tar.Z

NO_BUILD=	yes
WRKSRC=		${WRKDIR}

FONTDIR=	${INSTPREFIX}/share/fonts/watanabe_font
DOCDIR=		${INSTPREFIX}/share/doc/${PORTNAME}

do-install:
	${MKDIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/mincho.vf1 ${WRKSRC}/mincho.vf2 ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/dviprt.vfn ${DOCDIR}

.include <port.mk>
