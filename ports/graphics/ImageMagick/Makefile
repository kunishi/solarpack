#
# $Id: Makefile,v 1.4 2001/11/12 12:18:11 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ImageMagick
VERSION=	5.4.0.5
PORTREV=	1

PKG=		OPENimgmg
NAME=		An X11 package for display and interactive manipulation of images
VENDOR=		John Cristy <magick@wizards.dupont.com>

MASTER_SITES=	http://imagemagick.sourceforge.net/http/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/ImageMagick/

LIB_DEPENDS=	OPUCbzip2:${PORTSDIR}/archivers/bzip2 \
		OPUChdf5:${PORTSDIR}/graphics/hdf5 \
		OPUCjasp:${PORTSDIR}/graphics/jasper \
		OPUCjbig:${PORTSDIR}/graphics/jbigkit \
		OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPUClcms:${PORTSDIR}/graphics/lcms \
		OPUClbwmf:${PORTSDIR}/graphics/libwmf \
		OPUCmp2dc:${PORTSDIR}/graphics/mpeg2dec \
		OPUCpng:${PORTSDIR}/graphics/png \
		OPENtiff:${PORTSDIR}/graphics/tiff \
		OPUCfrty2:${PORTSDIR}/print/freetype2 \
		OPUClxml2:${PORTSDIR}/textproc/libxml2

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-5.4.0/
CONFIGURE_ENV+=		LD_LIBRARY_PATH=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--enable-shared \
			--with-perl=${LOCALBASE}/bin/perl \
			--program-transform-name='s,^,,'
USE_PERL5=	yes
USE_GMAKE=	yes
MAKE_ARGS+=	CFLAGS="-g -O0"
MAKE_INSTALL_ARGS+=	MagickSharePath=${INSTPREFIX}/share/ImageMagick \
			pkgdocdir=${INSTPREFIX}/share/ImageMagick

PERL_VER=	5.6.0
PERL_ARCH!=	/usr/bin/echo `/usr/bin/arch`-solaris
PROTOTYPE_SUB+=	PERL_VER=${PERL_VER} \
		PERL_ARCH=${PERL_ARCH}

pre-install:
	cd ${WRKSRC} && ${ENV} ${MAKE_INSTALL_ENV} ${GMAKE} ${MAKE_INSTALL_ARGS} PerlMagick/Makefile
	${PERL} -pi -e 's|^INSTALLPRIVLIB = |INSTALLPRIVLIB = ${INSTPREFIX}/lib/perl5/${PERL_VER}|;' \
		-e 's|^INSTALLARCHLIB = |INSTALLARCHLIB = ${INSTPREFIX}/lib/perl5/${PERL_VER}/${PERL_ARCH}|;' \
		-e 's|^INSTALLSITELIB = |INSTALLSITELIB = ${INSTPREFIX}/lib/perl5/site_perl/${PERL_VER}|;' \
		-e 's|^INSTALLSITEARCH = |INSTALLSITEARCH = ${INSTPREFIX}/lib/perl5/site_perl/${PERL_VER}/${PERL_ARCH}|;' \
		${WRKSRC}/PerlMagick/Makefile

.include <port.mk>
