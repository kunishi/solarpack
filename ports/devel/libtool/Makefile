#
# $Id: Makefile,v 1.1 1999/05/21 08:33:03 kunishi Exp $
#

DISTNAME=	libtool-1.3
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/libtool/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/libtool/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	${CHOWN} -R root:bin ${WRK_BASEDIR}/share/libtool

.include <port.mk>
