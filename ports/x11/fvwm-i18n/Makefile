#
# $Id: Makefile,v 1.4 1999/06/09 02:35:59 kunishi Exp $
#

PKG=		OPENfvwm
NAME=		fvwm version 2
VERSION=	2.2
VENDOR=		Robert Nation, <http://www.fvwm.org/>

DISTNAME =	fvwm-${VERSION}
PKGNAME =	fvwm-i18n-${VERSION}
MASTER_SITES =	ftp://ftp.fvwm.org/pub/fvwm/version-2/
PATCH_SITES =	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/fvwm-users-jp/I18N_MB/
PATCHFILES =	${DISTNAME}-I18N_MB-1999042001.patch

USE_X_PREFIX=		yes
USE_GMAKE=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX}
CONFIGURE_ARGS+=	--enable-extras --enable-kanji
CONFIGURE_ARGS+=	--with-iconpath=${PREFIX}/share/icons/fvwm:/usr/include/X11/bitmaps:/usr/include/X11/pixmaps
MAKE_ENV+=		prefix=${PREFIX}
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX}
INSTALL_TARGET+=	install-data

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
