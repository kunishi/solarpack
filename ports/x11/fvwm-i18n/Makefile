#
# $Id: Makefile,v 1.7 2000/09/21 12:37:45 kunishi Exp $
#

PORTNAME=	fvwm-i18n
VERSION=	2.2
PORTREV=	2

PKG=		OPENfvwm
NAME=		fvwm version 2
VENDOR=		Robert Nation, <http://www.fvwm.org/>

OSREL!=		/usr/bin/uname -r

DISTNAME =	fvwm-${VERSION}
MASTER_SITES =	ftp://ftp.fvwm.org/pub/fvwm/version-2/
PATCH_SITES =	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/fvwm-users-jp/I18N_MB/
PATCHFILES =	${DISTNAME}-I18N_MB-1999042001.patch

BUILD_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm
RUN_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm

USE_X_PREFIX=		yes
USE_GMAKE=		yes
GNU_CONFIGURE=		yes
CXXFLAGS=		-g -O -ansi -pedantic
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--enable-extras --enable-kanji
CONFIGURE_ARGS+=	--with-iconpath=${PREFIX}/share/icons/fvwm:/usr/include/X11/bitmaps:/usr/include/X11/pixmaps
MAKE_ENV+=		prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX}
INSTALL_TARGET+=	install install-data

RC_FILES =	decor_examples new-features system.fvwm2rc \
		system.fvwm2rc-sample-1 system.fvwm2rc-sample-2

post-install:
	@${MKDIR} ${INSTPREFIX}/share/icons/fvwm
	@${INSTALL} -c -m 644 -o root -g bin \
		${WRKSRC}/icons/*.xpm ${WRKSRC}/icons/*.xbm \
		${WRKSRC}/icons/*.bitmap ${WRKSRC}/icons/*.icon \
		${INSTPREFIX}/share/icons/fvwm
	@${MKDIR} ${INSTPREFIX}/lib/X11/fvwm/2.2
	@for file in ${RC_FILES}; do \
		${INSTALL} -c -m 644 -o root -g bin \
			${WRKSRC}/sample.fvwmrc/$${file} ${INSTPREFIX}/lib/X11/fvwm/2.2; \
	done

.include <port.mk>
