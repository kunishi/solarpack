#
# $Id: Makefile,v 1.1 2001/03/16 11:18:07 kunishi Exp $
#

PORTNAME=	intlfonts
VERSION=	1.2
PORTREV=	1

PKG=		OPENintfn
NAME=		Free X11 fonts for all characters that Emacs can handle

VENDOR=		${VENDOR_GNU}
MASTER_SITES=	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/intlfonts/

USE_X_PREFIX=	yes

NORMAL_FONTS=	Asian \
		Chinese \
		Ethiopic \
		European \
		Japanese \
		Misc
X_FONTS=	Chinese.X \
		Japanese.X \
		Korean.X
BIG_FONTS=	European.BIG \
		Chinese.BIG \
		Japanese.BIG	
FONTSDIR=	lib/X11/fonts/local
DOCDIR=		share/doc/${DISTNAME}

do-build:
	cd ${WRKSRC}; \
	for dir in ${NORMAL_FONTS} ${X_FONTS} ${BIG_FONTS}; do \
		for bdf in $$dir/*.bdf; do \
			${ECHO} $$bdf; \
			pcf=`${ECHO} $$bdf | ${SED} 's/.bdf$$/.pcf/'`; \
			bdftopcf $$bdf > $$pcf; \
			compress $$pcf; \
		done \
	done

pre-install:
	${MKDIR} ${INSTPREFIX}/${FONTSDIR}

do-install:
	cd ${WRKSRC}; \
	for dir in ${NORMAL_FONTS} ${X_FONTS} ${BIG_FONTS}; do \
		${INSTALL_DATA} $$dir/*.pcf.Z ${INSTPREFIX}/${FONTSDIR}; \
	done

post-install:
	${MKDIR} ${INSTPREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${INSTPREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/Emacs.ap ${INSTPREFIX}/${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/NEWS ${INSTPREFIX}/${DOCDIR}

.include <port.mk>
