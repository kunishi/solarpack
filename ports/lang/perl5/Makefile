#
# $Id: Makefile,v 1.2 1999/05/18 03:08:59 kunishi Exp $
#

DISTNAME =	perl5.005_03
PKGNAME =	perl-5.00503
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/lang/perl/CPAN/src/5.0/

HAS_CONFIGURE=	yes
CONFIGURE =	${WRKSRC}/Configure
CONFIGURE_ARGS =	-sde -Dprefix=${PREFIX} -Dcc=${CC}
PKGMK_ARGS +=	-b ${PREFIX}

test:
	@(cd ${WRKSRC}; ${MAKE} test)

.include <port.mk>
