#
# $Id: Makefile,v 1.2 2002/03/18 11:29:11 kunishi Exp $
#

PORTNAME=	ruby
VERSION=	1.8.0
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

.include <port.mk>
