#
# $Id: Makefile,v 1.3 1999/06/05 09:17:33 kunishi Exp $
#

PKG=		OPENperl
NAME=		Perl Programming Language
VERSION=	5.00503
VENDOR=		Larry Wall

DISTNAME =	perl5.005_03
PKGNAME =	perl-${VERSION}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/lang/perl/CPAN/src/5.0/

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS =	-sde -Dprefix=${PREFIX} -Dcc=${CC}

test:
	@(cd ${WRKSRC}; ${MAKE} test)

.include <port.mk>
