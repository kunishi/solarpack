include ../../include/pre.mk

DISTNAME=	tar-1.12
PKGNAME=	g${DISTNAME}
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/tar/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/tar/
WRKSRC=		${WRKDIR}/${DISTNAME}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--program-prefix=g
USE_GMAKE=	yes

CORE_TOOLS=	yes

include ../../include/pkgbuild.mk
