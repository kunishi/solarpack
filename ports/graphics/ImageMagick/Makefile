#
# $Id: Makefile,v 1.1 2000/06/19 12:17:29 kunishi Exp $
#

PORTNAME=	ImageMagick
VERSION=	5.1.1
PORTREV=	1

PKG=		OPENimgmg
NAME=		An X11 package for display and interactive manipulation of images
VENDOR=		John Cristy <magick@wizards.dupont.com>

MASTER_SITES=	ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
		ftp://ftp.u-aizu.ac.jp/pub/graphics/image/ImageMagick/

LIB_DEPENDS=	OPENjpeg:${PORTSDIR}/graphics/jpeg \
		OPENtiff:${PORTSDIR}/graphics/tiff \
		OPENpng:${PORTSDIR}/graphics/png \
		OPENft:${PORTSDIR}/print/freetype

BUILD_DEPENDS=	OPENbzip2:${PORTSDIR}/archivers/bzip2 \
		GNUgzip:${PORTSDIR}/archivers/gzip \
		OPENhdf:${PORTSDIR}/graphics/hdf \
		OPENjbig:${PORTSDIR}/graphcis/jbigkit \
		OPENntpbm:${PORTSDIR}/graphics/netpbm \
		GNUgsvf:${PORTSDIR}/print/gs

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-shared \
			--build=${GNU_HOSTTYPE} --host=${GNU_HOSTTYPE} \
			--target=${GNU_HOSTTYPE}
CONFIGURE_ENV+=	ac_cv_path_ZipDelegate="${LOCALBASE}/bin/gzip"
CONFIGURE_TARGET=	# 
USE_PERL5=	yes
USE_GMAKE=	yes

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
