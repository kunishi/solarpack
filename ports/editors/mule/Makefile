#
# $Id: Makefile,v 1.6 2000/07/14 11:13:29 kunishi Exp $
#

PORTNAME?=	ja-mule
VERSION=	2.3@19.34b
PORTREV=	1

PKG?=		GNUmule
NAME?=		GNU Multi-lingual Emacs

VENDOR=		${VENDOR_GNU}
DISTNAME =	emacs-19.34b
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/emacs/ \
		ftp://etlport.etl.go.jp/pub/mule/

PATCH_SITES =	ftp://ftp.media.kyoto-u.ac.jp/GNU/mule/ \
		ftp://etlport.etl.go.jp/pub/mule/
PATCHFILES =	mule-23-1934-alpha01.diff.gz
PATCH_DIST_STRIP =	-p1
WRKSRC =	${WRKDIR}/emacs-${EMACS_VER}

WNN6_DIR =	/usr/lib/locale/ja/wnn/demo
EMACS_VER=	19.34

USE_GMAKE=		yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS +=	--with-x \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-x-app-default-path=${X11BASE}/lib/X11/app-defaults \
			--with-x-toolkit=yes \
			--with-pop \
			--with-executable=mule
PROTOTYPE_SUB+=		EMACS_VER=${EMACS_VER}

.if defined(WITH_WNN6)
CONFIGURE_ARGS +=	--with-wnn6 \
			--with-wnn-includes=${WNN6_DIR}/include/wnn \
			--with-wnn-libraries=${WNN6_DIR}/lib
.endif

.if defined(WITH_CANNA)
CONFIGURE_ARGS +=	--with-canna \
			--with-canna-includes=${LOCALBASE}/canna/include \
			--with-canna-libraries=${LOCALBASE}/lib
LIB_DEPENDS=	OPENcanna:${PORTSDIR}/japanese/Canna
.endif

post-patch:
	@(cd ${WRKSRC}/lisp; \
	${PATCH} -p0 -N < ${FILESDIR}/canna.el-19.34.patch; \
	${PATCH} -p0 -N < ${FILESDIR}/egg.el-19.34.patch)

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/emacs/info
	${INSTALL_DATA} ${WRKSRC}/info/dir ${INSTPREFIX}/share/examples/emacs/info
#	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/emacs/${EMACS_VER}

.include <port.mk>
