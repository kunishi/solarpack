#
# $Id: Makefile,v 1.3 1999/06/09 02:35:58 kunishi Exp $
#

PKG=		OPENvxdvi
NAME=		Xdvik with VFlib support
VERSION=	20c+j1.0p0d
VENDOR=		kb@mail.tug.org

DISTNAME=	xdvik-20c
PKGNAME=	ja-xdvik-vflib-${VERSION}
MASTER_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/

PATCHFILES=	xdvik20c-j1.0p0d.patch.gz
PATCH_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
MAKE_INSTALL_ARGS+=	texmf=${INSTPREFIX}/share/texmf
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
	${MKDIR} ${INSTPREFIX}/share/texmf/xdvi

post-install:
	${MKDIR} ${INSTPREFIX}/share/doc/xdvik
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/xdvik/${doc} \
	  ${INSTPREFIX}/share/doc/xdvik
.endfor
	${INSTALL_DATA} ${FILESDIR}/vfontmap ${INSTPREFIX}/share/texmf/xdvi

.include <port.mk>
