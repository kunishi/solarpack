#
# $Id: Makefile,v 1.4 2001/11/28 14:38:05 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	gtk
VERSION=	1.2.10
PORTREV=	1

PKG=		OPUCgtk
NAME=		General Toolkit for X11 GUI
VENDOR=		http://www.gtk.org/

MASTER_SITES=	ftp://ftp.gimp.org/pub/gtk/v1.2/
DISTNAME=	gtk+-${VERSION}

LIB_DEPENDS=	GNUglib:${PORTSDIR}/devel/glib \
		OPUCgetxt:${PORTSDIR}/devel/gettext

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	gt_cv_func_dgettext_libc=no
USE_GMAKE=	yes

CLASS_INFO=	info/gdk.info info/gtk.info

.include <port.mk>
