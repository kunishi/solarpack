#
# $Id: Makefile,v 1.2 2002/03/20 09:24:54 kunishi Exp $
#

PORTNAME=	emacs
VERSION=	21.2
PORTREV=	1

PKG=		OPUCemacs
NAME=		GNU Emacs editor

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	emacs
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} leim-${VERSION}${EXTRACT_SUFX}

.if defined(USE_XAW3D)
PATCH_SITES=	http://www.nijino.com/ari/patches/
PATCHFILES=	${PORTNAME}-${VERSION}-fontset-20011109.patch.gz
PATCH_DIST_STRIP=	-p1
.endif

LIB_DEPENDS=	OPUCjpeg:${PORTSDIR}/graphics/jpeg \
		OPUCtiff:${PORTSDIR}/graphics/tiff \
		OPENungif:${PORTSDIR}/graphics/libungif \
		OPUCpng:${PORTSDIR}/graphics/png \
		OPENxpm:${PORTSDIR}/graphics/xpm
.if defined(USE_XAW3D)
LIB_DEPENDS+=	OPUCxaw3d:${PORTSDIR}/graphics/xaw3d
.endif

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	LDFLAGS='-L${LOCALBASE}/lib -R${LOCALBASE}/lib -L${X11BASE}/lib -R${X11BASE}/lib'
CONFIGURE_ARGS+=	--without-xim
.if !defined(USE_XAW3D)
CONFIGURE_ARGS+=	--with-x-toolkit=motif
.endif
USE_AUTOCONF=	yes
USE_GMAKE=	yes
PROTOTYPE_SUB+=	EMACS_VER=${VERSION}
CLASS_INFO=	info/ada-mode info/autotype info/ccmode info/cl \
		info/dired-x info/ebrowse info/ediff info/efaq info/emacs \
		info/emacs-mime info/eshell info/eudc info/forms info/gnus \
		info/idlwave info/info info/message info/mh-e info/pcl-cvs \
		info/reftex info/sc info/speedbar info/vip info/viper \
		info/widget info/woman

post-install:
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/emacs/${VERSION}

.include <port.mk>
