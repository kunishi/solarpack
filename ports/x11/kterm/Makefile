#
# $Id: Makefile,v 1.9 2001/03/02 05:58:34 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	kterm
VERSION=	6.2.0
PORTREV=	2

PKG=		OPENkterm
NAME=		X11 kanji terminal emulator

VENDOR=		Hiroto Kagotani <kagotani@in.it.okayama-u.ac.jp>
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/X/opengroup/contrib/applications/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/FreeBSD/ports/distfiles/
USE_IMAKE=	yes

post-install:
	@${MKDIR} ${INSTPREFIX}/share/kterm
	@${INSTALL} -c -m 644 -o root -g bin ${WRKSRC}/terminfo.kt \
		${INSTPREFIX}/share/kterm

.include <port.mk>
