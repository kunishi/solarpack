#
# $Id: Makefile,v 1.5 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	perl
VERSION=	5.00503
PORTREV=	1

PKG=		OPENperl
NAME=		Perl Programming Language

VENDOR=		Larry Wall
DISTNAME =	perl5.005_03
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/lang/perl/CPAN/src/5.0/

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS =	-sde -Dprefix=${PREFIX} -Dcc=${CC}

INSTPREFIX=	${LOCALBASE}
PERLARCH!=	/usr/bin/arch
PROTOTYPE_SUB+=	PERLVER=${VERSION} \
		PERLARCH=${PERLARCH}-solaris

test:
	@(cd ${WRKSRC}; ${MAKE} test)

.include <port.mk>
