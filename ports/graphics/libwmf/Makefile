#
# $Id: Makefile,v 1.2 2001/11/19 12:32:13 kunishi Exp $
#

PORTNAME=	libwmf
VERSION=	0.2.2
PORTREV=	2

PKG=		OPUClbwmf
NAME=		Tools and library routines for converting Microsoft wmf

MASTER_SITES=	http://prdownloads.sourceforge.net/wvware/

LIB_DEPENDS=	OPUCjpeg:${PORTSDIR}/graphics/jpeg \
		OPUCpng:${PORTSDIR}/graphics/png \
		OPUCfrty2:${PORTSDIR}/print/freetype2 \
		OPUClxml2:${PORTSDIR}/textproc/libxml2

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --without-sysfontmap \
		--with-gsfontmap=${LOCALBASE}/share/ghostscript/fonts/Fontmap \
		--with-gsfontdir=${LOCALBASE}/share/ghostscript/fonts \
		--with-fontdir='$$(prefix)/share/libwmf/fonts' \
		--with-docdir='$$(prefix)/share/doc/libwmf' \
		--disable-magick
USE_LIBTOOL=	yes
USE_GMAKE=	yes
USE_ZLIB=	yes

.include <port.mk>
