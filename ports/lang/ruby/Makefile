#
# $Id: Makefile,v 1.1 2001/11/13 08:26:33 kunishi Exp $
#

PORTNAME=	ruby
VERSION=	1.6.5
PORTREV=	1

PKG=		OPUCruby
NAME=		Ruby, an object-oriented interpreted scripting language

VENDOR=		Yukihiro Matsumoto
MASTER_SITES=	ftp://ftp.ruby-lang.org/pub/ruby/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-shared
USE_GMAKE=	yes
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR}
PREFIX_AS_INSTPREFIX=	yes

PROTOTYPE_SUB+=	VERSION=${VERSION} RUBY_HOSTTYPE=${ARCH}-solaris${OSREL_SOLARIS}

.include <port.mk>
