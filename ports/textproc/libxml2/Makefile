#
# $Id: Makefile,v 1.3 2001/11/28 10:41:05 kunishi Exp $
#

PORTNAME=	libxml2
VERSION=	2.4.11
PORTREV=	1

PKG=		OPUClxml2
NAME=		XML parser 2 for GNOME

MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/X/gnome/stable/sources/libxml/ \
		ftp://ftp.sourceforge.net/pub/mirrors/gnome/stable/sources/libxml/

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-zlib \
			--with-html-dir='$$(prefix)/share/doc'
USE_GMAKE=	yes
USE_ZLIB=	yes

.include <port.mk>
