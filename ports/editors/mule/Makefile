include ../../conf/pkgbuild.conf

include ${PKGBUILD_MAKEFILE_DIR}/pre.mk
include ${PKGBUILD_MAKEFILE_DIR}/gnu_configure.mk
include ${PKGBUILD_MAKEFILE_DIR}/use_gmake.mk

DISTNAME =	emacs-19.34b
PKGNAME =	ja-mule@19.34-canna+wnn6-2.3
MASTER_SITES =	ftp://etlport.etl.go.jp/pub/mule/

PATCH_SITES =	ftp://etlport.etl.go.jp/pub/mule/
PATCHFILES =	mule-23-1934-alpha01.diff.gz
PATCH_DIST_STRIP =	-p1
JA_LOCALE_WNN_DIR =	/usr/lib/locale/ja/wnn/demo
WRKSRC =	${WRKDIR}/emacs-19.34

CONFIGURE_ARGS +=	--with-x \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-x-app-default-path=${X11BASE}/lib/X11/app-defaults \
			--with-x-toolkit=yes \
			--with-pop \
			--with-executable=mule
# for Wnn6
CONFIGURE_ARGS +=	--with-wnn6 \
			--with-wnn-includes=${JA_LOCALE_WNN_DIR}/include/wnn \
			--with-wnn-libraries=${JA_LOCALE_WNN_DIR}/lib
# for Canna
CONFIGURE_ARGS +=	--with-canna \
			--with-canna-includes=${PREFIX}/canna/include \
			--with-canna-libraries=${PREFIX}/lib

post-patch::
	@(cd ${WRKSRC}/lisp; \
	${PATCH} -p0 -N < ${CURDIR}/files/canna.el-19.34.patch; \
	${PATCH} -p0 -N < ${CURDIR}/files/egg.el-19.34.patch)

include ${PKGBUILD_MAKEFILE_DIR}/pkgbuild.mk
