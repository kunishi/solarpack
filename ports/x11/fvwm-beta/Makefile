#
# $Id: Makefile,v 1.1 2001/03/30 01:35:22 kunishi Exp $
#

PORTNAME=	fvwm-beta
VERSION=	2.3.30
PORTREV=	1

PKG=		OPENfvwmb
NAME=		fvwm, an extremly powerful ICCCM-compliant window manager

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/
DISTNAME=	fvwm-${VERSION}

LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--enable-multibyte
PROTOTYPE_SUB+=	FVWM_VERSION=${VERSION}

.include <port.mk>
