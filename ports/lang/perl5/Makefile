#
# $Id: Makefile,v 1.7 2000/09/21 12:28:23 kunishi Exp $
#

PORTNAME=	perl
VERSION=	5.6.0
PORTREV=	2

PKG=		OPENperl
NAME=		Perl Programming Language

VENDOR=		Larry Wall
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/lang/perl/CPAN/src/

BUILD_DEPENDS=	GNUcc:${PORTSDIR}/devel/gcc \
		OPENjless:${PORTSDIR}/textproc/jless
RUN_DEPENDS=	OPENjless:${PORTSDIR}/textproc/jless

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS =	-sde -Dprefix=${PREFIX} -Dcc=${PREFIX}/bin/gcc
MAKE_INSTALL_ARGS+=	PERL_VER=${VERSION} \
			INSTALLPREFIX=${INSTPREFIX}

PERLARCH!=	/usr/bin/arch
PROTOTYPE_SUB+=	PERL_ARCH=${PERLARCH}-solaris \
		PERL_VER=${VERSION}

test:
	@(cd ${WRKSRC}; ${MAKE} test)

.include <port.mk>
