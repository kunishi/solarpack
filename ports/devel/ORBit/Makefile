#
# $Id: Makefile,v 1.1 2000/06/20 09:57:41 kunishi Exp $
#

PORTNAME=	ORBit
VERSION=	0.5.1
PORTREV=	1

PKG=		GNUorbit
NAME=		High-performance CORBA ORB with support for the C language
VENDOR=		http://www.gnome.org/

MASTER_SITES=	ftp://ftp.gnome.org/pub/GNOME/stable/sources/ORBit/

LIB_DEPENDS=	GNUglib:${PORTSDIR}/devel/glib \
		GNUgetxt:${PORTSDIR}/devel/gettext

BUILD_DEPENDS=	GNUflex:${PORTSDIR}/devel/flex

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

CLASS_INFO=	info/libIDL.info

.include <port.mk>
