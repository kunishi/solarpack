#
# $Id: Makefile,v 1.5 1999/06/03 12:19:55 kunishi Exp $
#

DISTNAME=	make-3.77
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/
WRKSRC=		${WRKDIR}/${DISTNAME}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--program-prefix=g

CORE_TOOLS=	yes

.include <port.mk>
