#
# $Id: Makefile,v 1.1 1999/05/21 04:50:58 kunishi Exp $
#

DISTNAME=	xdvik-20c
PKGNAME=	ja-xdvik-vflib-20c+j1.0p0d
MASTER_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/

PATCHFILES=	xdvik20c-j1.0p0d.patch.gz
PATCH_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
MAKE_INSTALL_ARGS+=	texmf=${WRK_BASEDIR}/share/texmf
MAKE_INSTALL_EXEC_DIR=	${WRKSRC}/xdvik

DOCS=	ChangeLog \
	ChangeLog.xdvik20a-j1.1 \
	ChangeLog.xdvik20c-j1.0 \
	README \
	README.xdvik20a-j1.1.patch \
	README.xdvik20c-j1.0p0.patch \
	xdvi.FAQ \
	xdvi.icon \
	READMEs/HEADERS.DOC \
	READMEs/InternalVars \
	READMEs/README.jp-patch \
	READMEs/README.markpage+toc+printdvi \
	READMEs/README.markpage+toc+printdvi+paper \
	READMEs/README.tasai-ussy \
	READMEs/README.xdvik18f-j1.0.patch \
	READMEs/README.xdvik18f-j1.1p5.patch

pre-install:
	${MKDIR} ${WRK_BASEDIR}/share/texmf/xdvi

post-install:
	${MKDIR} ${WRK_BASEDIR}/share/doc/xdvik
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/xdvik/${doc} \
	  ${WRK_BASEDIR}/share/doc/xdvik
.endfor
	${INSTALL_DATA} ${FILESDIR}/vfontmap ${WRK_BASEDIR}/share/texmf/xdvi

.include <port.mk>
