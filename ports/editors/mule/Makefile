#
# $Id: Makefile,v 1.3 1999/06/05 06:06:46 kunishi Exp $
#

PKG=		GNUmule
NAME=		GNU Multi-lingual Emacs
VERSION=	2.3@19.34b
VENDOR=		${VENDOR_GNU}

DISTNAME =	emacs-19.34b
PKGNAME =	ja-mule-canna+wnn6-${VERSION}
MASTER_SITES =	ftp://ring.nacsis.ac.jp/pub/GNU/emacs/ \
		ftp://etlport.etl.go.jp/pub/mule/

PATCH_SITES =	ftp://ftp.media.kyoto-u.ac.jp/GNU/mule/ \
		ftp://etlport.etl.go.jp/pub/mule/
PATCHFILES =	mule-23-1934-alpha01.diff.gz
PATCH_DIST_STRIP =	-p1
WRKSRC =	${WRKDIR}/emacs-19.34

WNN6_DIR =	/usr/lib/locale/ja/wnn/demo

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

post-patch:
	@(cd ${WRKSRC}/lisp; \
	${PATCH} -p0 -N < ${FILESDIR}/canna.el-19.34.patch; \
	${PATCH} -p0 -N < ${FILESDIR}/egg.el-19.34.patch)

.include <port.mk>
