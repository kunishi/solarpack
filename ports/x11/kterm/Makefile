#
# $Id: Makefile,v 1.4 1999/05/17 12:15:45 kunishi Exp $
#

DISTNAME=	kterm-6.2.0
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/X/opengroup/contrib/applications/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/FreeBSD/ports/distfiles/
USE_IMAKE=	yes

post-install:
	@${MKDIR} ${WRK_BASEDIR}/share/kterm
	@${INSTALL} -c -m 644 -o root -g bin ${WRKSRC}/terminfo.kt \
		${WRK_BASEDIR}/share/kterm

.include <port.mk>
