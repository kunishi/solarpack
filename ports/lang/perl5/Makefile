#
# $Id: Makefile,v 1.9 2001/11/13 08:11:39 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	perl
VERSION=	5.6.1
PORTREV=	2

PKG=		OPUCperl
NAME=		Perl Programming Language

VENDOR=		Larry Wall
MASTER_SITES =	ftp://ftp.dnsbalance.ring.gr.jp/pub/lang/perl/CPAN/src/

BUILD_DEPENDS=	OPUCgcc:${PORTSDIR}/devel/gcc \
		OPUCjless:${PORTSDIR}/textproc/jless
RUN_DEPENDS=	OPUCjless:${PORTSDIR}/textproc/jless

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT=	Configure
CONFIGURE_ARGS=		-sde -Dprefix=${PREFIX} -Dinstallprefix=${INSTPREFIX} \
			-Dcc=${PREFIX}/bin/gcc \
			-Uinstallusrbinperl -Uusemymalloc
MAKE_INSTALL_ARGS+=	PERL_VER=${VERSION}

PERLARCH!=	/usr/bin/arch
PROTOTYPE_SUB+=	PERL_ARCH=${PERLARCH}-solaris \
		PERL_VER=${VERSION}
PERL_ARCHLIB_DIR=	${INSTPREFIX}/lib/perl5/${VERSION}/${PERLARCH}-solaris

post-install:
	/usr/bin/perl -pi -e 's,${INSTPREFIX},${PREFIX},g;' \
	  ${PERL_ARCHLIB_DIR}/Config.pm ${PERL_ARCHLIB_DIR}/.packlist

test:
	@(cd ${WRKSRC}; ${MAKE} test)

.include <port.mk>
