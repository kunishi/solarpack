#
# $Id: Makefile,v 1.4 2003/02/26 10:59:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ORBit
VERSION=	0.5.14
PORTREV=	1

PKG=		GNUorbit
NAME=		High-performance CORBA ORB with support for the C language
VENDOR=		http://www.gnome.org/

MASTER_SITES=	ftp://ftp.gnome.org/pub/GNOME/stable/sources/ORBit/

LIB_DEPENDS=	GNUglib:${PORTSDIR}/devel/glib \
		OPUCgetxt:${PORTSDIR}/devel/gettext

BUILD_DEPENDS=	GNUflex:${PORTSDIR}/devel/flex

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-included-gettext

CLASS_INFO=	info/libIDL.info

.include <port.mk>
