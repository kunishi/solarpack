#
# $Id: Makefile,v 1.5 1999/06/03 12:23:30 kunishi Exp $
#

DISTNAME=	tar-1.12
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/
WRKSRC=		${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CORE_TOOLS=	yes

.include <port.mk>
