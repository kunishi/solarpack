#
# $Id: Makefile,v 1.2 2000/09/27 01:27:59 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	afterstep
VERSION=	1.8.0
PORTREV=	1

PKG=		OPENaftst
NAME=		the AfterStep window manager, stable version
VENDOR=		http://www.afterstep.org/

MASTER_SITES=	ftp://ftp.afterstep.org/stable/
DISTNAME=	AfterStep-${VERSION}

LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENtiff:${PORTSDIR}/graphics/tiff

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_PERL5=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-i18n
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR}

.include <port.mk>
