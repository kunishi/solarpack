#
# $Id: Makefile,v 1.4 2001/03/30 01:33:53 kunishi Exp $
#

.include <port.pre.mk>

.if !defined(PORTNAME)
PORTNAME=	emcws20
.endif
VERSION=	${EMACS_VER}.${EMCWS_VER}
PORTREV=	1

.if !defined(PKG)
PKG?=		GNUemcws
.endif
.if !defined(NAME)
NAME?=		Emacs20, with Japanese IME support
.endif
VENDOR=		${VENDOR_GNU}

MASTER_SITES=	ftp://core.ring.gr.jp/pub/GNU/emacs/ \
		ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/emacs/
DISTNAME=	emacs-${EMACS_VER}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} leim-${EMACS_VER}${EXTRACT_SUFX}

PATCH_SITES=	ftp://ftp.ki.nu/pub/emcws/ \
		ftp://ftp.kddlabs.co.jp/.6/Japan/ki.nu/emcws/
PATCHFILES=	emcws-${EMACS_VER}-${EMCWS_VER}.gz
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--with-gcc \
			--with-pop \
			--with-x
.if defined(WITH_MOTIF)
CONFIGURE_ARGS+=	--with-x-toolkit=motif
.endif
.if defined(WITH_WNN6)
CONFIGURE_ARGS+=	--with-wnn6 \
			--with-wnn-includes=${WNN6_INCDIR} \
			--with-wnn-libraries=${WNN6_LIBDIR}
.endif
.if defined(WITH_CANNA)
LIB_DEPENDS=	OPENcanna:${PORTSDIR}/japanese/Canna
CONFIGURE_ARGS+=	--with-canna \
			--with-canna-includes=${CANNA_INCDIR} \
			--with-canna-libraries=${CANNA_LIBDIR}
.endif
.if defined(WITH_SJ3)
CONFIGURE_ARGS+=	--with-sj3
.endif

CLASS_INFO=	info/ccmode info/cl info/dired-x info/ediff \
		info/emacs info/forms info/gnus info/info \
		info/message info/mh-e info/reftex info/sc \
		info/vip info/viper info/widget
PROTOTYPE_IN?=	${PKGDIR}/prototype.in
PROTOTYPE_SUB+=	EMACS_VER=${EMACS_VER}

EMACS_VER=	20.7
EMCWS_VER=	20010125
WNN6_INCDIR=	/usr/lib/locale/ja/wnn/demo/include/wnn
WNN6_LIBDIR=	/usr/lib/locale/ja/wnn/demo/lib
CANNA_INCDIR=	${LOCALBASE}/canna/include
CANNA_LIBDIR=	${LOCALBASE}/lib

.include <port.mk>
