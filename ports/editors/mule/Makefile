#
# $Id: Makefile,v 1.5 2000/05/17 06:42:46 kunishi Exp $
#

PORTNAME=	ja-mule-canna+wnn6
VERSION=	2.3@19.34b
PORTREV=	1

PKG=		GNUmule
NAME=		GNU Multi-lingual Emacs

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
# for Wnn6
CONFIGURE_ARGS +=	--with-wnn6 \
			--with-wnn-includes=${WNN6_DIR}/include/wnn \
			--with-wnn-libraries=${WNN6_DIR}/lib
# for Canna
CONFIGURE_ARGS +=	--with-canna \
			--with-canna-includes=${PREFIX}/canna/include \
			--with-canna-libraries=${PREFIX}/lib

LIB_DEPENDS=	OPENcanna:${PORTSDIR}/japanese/Canna

post-patch:
	@(cd ${WRKSRC}/lisp; \
	${PATCH} -p0 -N < ${FILESDIR}/canna.el-19.34.patch; \
	${PATCH} -p0 -N < ${FILESDIR}/egg.el-19.34.patch)

post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/emacs/info
	${INSTALL_DATA} ${WRKSRC}/info/dir ${INSTPREFIX}/share/examples/emacs/info
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${INSTPREFIX}/share/emacs/${EMACS_VER}

.include <port.mk>
