#
# $Id: Makefile,v 1.5 1999/06/06 07:02:30 kunishi Exp $
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
	@${MKDIR} ${WRK_BASEDIR}/share/kterm
	@${INSTALL} -c -m 644 -o root -g bin ${WRKSRC}/terminfo.kt \
		${WRK_BASEDIR}/share/kterm

.include <port.mk>
