#
# $Id: Makefile,v 1.1 2000/05/18 06:40:44 kunishi Exp $
#

PORTNAME=	wmicons
VERSION=	1.0
PORTREV=	1

PKG=		WMicons
NAME=		Icons mainly for use in WindowMaker

VENDOR=		http://www.windowmaker.org/
MASTER_SITES=	ftp://ftp.windowmaker.org/pub/contrib/icons/ \
		ftp://ftp.windowmaker.org/pub/beta/srcs/ \
		ftp://ports.jp.FreeBSD.org/pub/FreeBSD-jp/ports-jp/LOCAL_PORTS/ \
		http://nether.tky.hut.fi/iconstore/ \
		http://www.itlb.te.noda.sut.ac.jp/~manome/wmaker/archive/ \
		http://www.slip.net/~seto/images/ \
		http://www.lab06.ee.u-tokai.ac.jp/~7jeem005/WindowMaker/Archives/
DISTFILES=	DWiconpack1.tar.gz DWiconpack2.tar.gz IconFest-1.2.tgz \
		NeXT_XEmacs_tar.gz wm_icons_png.tar.gz wm_icons_tif.tar.gz \
		WindowMaker-extra-0.1.tar.gz \
		isiconpack4.tgz \
		japanese-step-icons1.1.tar.gz \
		KTermIcons-1.0.tar.gz
EXTRACT_ONLY=	DWiconpack1.tar.gz DWiconpack2.tar.gz IconFest-1.2.tgz \
		NeXT_XEmacs_tar.gz wm_icons_png.tar.gz wm_icons_tif.tar.gz \
		WindowMaker-extra-0.1.tar.gz \
		japanese-step-icons1.1.tar.gz \
		KTermIcons-1.0.tar.gz

GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/WindowMaker-extra-0.1

WMICONDIR=	${INSTPREFIX}/share/WindowMaker/Pixmaps
WMDOCDIR=	${INSTPREFIX}/share/doc/${PORTNAME}

post-extract:
	${MKDIR} ${WRKDIR}/isiconpack4
	${EXTRACT_CMD} ${DISTDIR}/isiconpack4.tgz | ${TAR} -x -C ${WRKDIR}/isiconpack4 -f -

pre-install:
	${MKDIR} ${WMDOCDIR} ${WMICONDIR}
	cd ${WRKDIR}/IconFest-1.2 ; \
	  ${INSTALL_DATA} .README.swp ${WMDOCDIR}; \
	  ${INSTALL_DATA} *.xpm *.tif ${WMICONDIR}
	cd ${WRKDIR}/Icons; \
	  ${INSTALL_DATA} *.xpm ${WMICONDIR}
	cd ${WRKDIR}/NeXT.XEmacs; \
	  ${INSTALL_DATA} README.NeXT.XEmacs ${WMDOCDIR}; \
	  ${INSTALL_DATA} ./*/*.xpm ${WMICONDIR}
	cd ${WRKDIR}/dwiconpack1; \
	  ${INSTALL_DATA} dwiconpack1.README ${WMDOCDIR}; \
	  ${INSTALL_DATA} *.tif ${WMICONDIR}
	cd ${WRKDIR}/dwiconpack2; \
	  ${INSTALL_DATA} dwiconpack2.README ${WMDOCDIR}; \
	  ${INSTALL_DATA} *.tif ${WMICONDIR}
	cd ${WRKDIR}/isiconpack4; \
	  ${INSTALL_DATA} CREDITS ${WMDOCDIR}; \
	  ${INSTALL_DATA} *.xpm *.tif ${WMICONDIR}
	cd ${WRKDIR}/japanese-step-icons; \
	  ${INSTALL_DATA} README.txt ${WMDOCDIR}/README.japanese-step-icons.txt; \
	  ${INSTALL_DATA} *.xpm ${WMICONDIR}
	cd ${WRKDIR}/vf_png; \
	  ${INSTALL_DATA} README ${WMDOCDIR}/README.vf_png; \
	  ${INSTALL_DATA} *.png ${WMICONDIR}
	cd ${WRKDIR}/vf_tif; \
	  ${INSTALL_DATA} README ${WMDOCDIR}/README.vf_tif; \
	  ${INSTALL_DATA} *.tif ${WMICONDIR}

.include <port.mk>
