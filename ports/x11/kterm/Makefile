#
# $Id: Makefile,v 1.6 1999/06/09 02:36:00 kunishi Exp $
#

PKG=		OPENkterm
NAME=		X11 kanji terminal emulator
VERSION=	6.2.0
VENDOR=		Hiroto Kagotani <kagotani@in.it.okayama-u.ac.jp>

DISTNAME=	kterm-${VERSION}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/X/opengroup/contrib/applications/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/FreeBSD/ports/distfiles/
USE_IMAKE=	yes

post-install:
	@${MKDIR} ${INSTPREFIX}/share/kterm
	@${INSTALL} -c -m 644 -o root -g bin ${WRKSRC}/terminfo.kt \
		${INSTPREFIX}/share/kterm

.include <port.mk>
