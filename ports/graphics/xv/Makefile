#
# $Id: Makefile,v 1.3 2001/11/19 12:38:59 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xv
VERSION=	3.10a+jp5.3.3
PORTREV=	2

PKG=		OPUCxv
NAME=		XV, a X image displaying program.
VENDOR=		John Bradley <xv@devo.dccs.upenn.edu>
MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/distfiles/xv/ \
		ftp://ftp.airlab.cs.ritsumei.ac.jp/pub/X/xv-jp-extension/working/
DISTNAME=	${PORTNAME}-3.10a
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${PORTNAME}310a-jp-extension-rev5.3.3.tar.gz

PATCH_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
PATCHFILES=	${DISTNAME}.JPEG-patch ${DISTNAME}.TIFF-patch

LIB_DEPENDS=	OPUCjpeg:${PORTSDIR}/graphics/jpeg \
		OPUCtiff:${PORTSDIR}/graphics/tiff

USE_IMAKE=	yes
XMKMF=		${X11BASE}/bin/xmkmf

DOCDIR=		${INSTPREFIX}/share/doc/${PORTNAME}

pre-patch:
	${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xv-jp-extension/Patch.xv310a-ext-5.3.3

post-install:
	${MKDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/epsf.ps ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/xpm.ps ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/xvdocs.ps ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/xvtitle.ps ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/help ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/bmp.doc ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/gif* ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/xv-jp-extension/CHANGELOG.* ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/xv-jp-extension/README.PhotoCD ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/xv-jp-extension/README.xv310a-ext-5.3.3 ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/xv-jp-extension/magic.add ${DOCDIR}

.include <port.mk>
