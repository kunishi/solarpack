#
# $Id: Makefile,v 1.1 2000/06/16 11:05:26 kunishi Exp $
#

PORTNAME=	gtk
VERSION=	1.2.8
PORTREV=	1

PKG=		GNUgtk
NAME=		General Toolkit for X11 GUI
VENDOR=		http://www.gtk.org/

MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/
DISTNAME=	gtk+-${VERSION}

LIB_DEPENDS=	GNUglib:${PORTSDIR}/devel/glib \
		GNUgetxt:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/gdk.info info/gtk.info

.include <port.mk>
