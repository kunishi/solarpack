#
# $Id: Makefile,v 1.2 2000/09/27 01:27:39 kunishi Exp $
#

.include <port.pre.mk>

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
