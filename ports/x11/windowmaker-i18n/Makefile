#
# $Id: Makefile,v 1.1 2000/05/18 03:38:05 kunishi Exp $
#

PORTNAME=	windowmaker-i18n
VERSION=	0.62.1
PORTREV=	1

PKG=	WMwndmk
NAME=	A GNUStep-compliant NeXTStep clone window manager (i18n extension)

VENDOR=	http://www.windowmaker.org/
MASTER_SITES=	ftp://ftp.windowmaker.org/pub/beta/srcs/
DISTNAME=	WindowMaker-${VERSION}

LIB_DEPENDS=	OPENxpm:${PORTSDIR}/graphics/xpm \
		OPENungif:${PORTSDIR}/graphics/libungif \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENtiff:${PORTSDIR}/graphics/tiff \
		WMlbprp:${PORTSDIR}/devel/libPropList \
		GNUgetxt:${PORTSDIR}/devel/gettext
BUILD_DEPENDS=	OPENnkf:${PORTSDIR}/textproc/nkf

USE_BZIP2=	yes
USE_PERL5=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CONFIGURE_ENV+=	CPP_PATH="${CC} -E -x c" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -R${LOCALBASE}/lib"
CONFIGURE_ARGS+= \
	--with-libs-from="-L${LOCALBASE}/lib -R${LOCALBASE}/lib" \
	--with-incs-from="-I${LOCALBASE}/include"

ARCH!=	/usr/bin/mach
.if (${ARCH} == "i386")
CONFIGURE_ENV+=	ac_cv_c_inline_mmx=no
.endif

.include <port.mk>
