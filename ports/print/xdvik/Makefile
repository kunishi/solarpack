#
# $Id: Makefile,v 1.8 2001/11/30 12:36:17 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-xdvik-vflib
VERSION=	20c+j1.0p0d
PORTREV=	2

PKG=		OPUCvxdvi
NAME=		Xdvik with VFlib support

VENDOR=		kb@mail.tug.org
DISTNAME=	xdvik-20c
MASTER_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/

PATCHFILES=	xdvik20c-j1.0p0d.patch.gz
PATCH_SITES=	ftp://ftp.ipc.chiba-u.ac.jp/pub/pub.yamaga/xdvik-20c/
PATCH_DIST_STRIP=	-p1

LIB_DEPENDS=	OPUCvflib:${PORTSDIR}/print/VFlib2
RUN_DEPENDS=	OPENadvps:${PORTSDIR}/print/dvipsk \
		OPENdvsel:${PORTSDIR}/print/dviselect

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
