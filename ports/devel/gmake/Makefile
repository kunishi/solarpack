include ../../include/pre.mk

DISTNAME=	make-3.77
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/make/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/make/
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
WRKSRC=		${WRKDIR}/${DISTNAME}
USE_GMAKE=	yes

CORE_TOOLS=	yes

include ../../include/pkgbuild.mk
