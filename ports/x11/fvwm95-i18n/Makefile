#
# $Id: Makefile,v 1.6 2000/05/17 06:42:49 kunishi Exp $
#

PORTNAME=	fvwm95-i18n
VERSION=	2.0.43a
PORTREV=	1

PKG=		OPENfv95i
NAME=		fvwm95, with I18N patch

VENDOR=		Hector Peraza <peraza@mitac11.uia.ac.be>, <http://www.linux-kheops.com/pub/fvwm95>
DISTNAME=	fvwm95-${VERSION}-Imake
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/misc/fvwm95/
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm95-${VERSION}.patch
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

PATCH_SITES=	${MASTER_SITES}
PATCHFILES=	fvwm95-${VERSION}-Imake.I18N.diff.gz
PATCH_DIST_STRIP=	-p1

USE_IMAKE=	yes

pre-patch:
	@cd ${WRKSRC}/fvwm; ${PATCH} -p0 -N < ${DISTDIR}/fvwm95-${VERSION}.patch

post-install:
	${MKDIR} ${INSTPREFIX}/share/icons/fvwm95
	cd ${WRKSRC}/icons && ${INSTALL_DATA} *.xpm ${INSTPREFIX}/share/icons/fvwm95
	cd ${WRKSRC}/mini-icons && ${INSTALL_DATA} *.xpm ${INSTPREFIX}/share/icons/fvwm95

.include <port.mk>
