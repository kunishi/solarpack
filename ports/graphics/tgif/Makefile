#
# $Id: Makefile,v 1.5 2001/11/28 12:40:47 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	tgif
VERSION=	4.1.41
PORTREV=	1

PKG=		OPUCtgif
NAME=		tgif, an Xlib base 2-D drawing facility under X11, with JP extension.
VENDOR=		William Chia-Wei Cheng <william@cs.ucla.edu>

MASTER_SITES=	ftp://bourbon.cs.umd.edu/pub/tgif/

RUN_DEPENDS=	OPUCntpbm:${PORTSDIR}/graphics/netpbm/

USE_IMAKE=	yes

DOCDIR=		share/doc/${PORTNAME}
EXAMPLEDIR=	share/examples/${PORTNAME}
EXAMPLEFILES=	an-sr-flip-flop.obj fonts.obj keys.obj \
		launch-demo-1.obj launch-demo.obj \
		slide-demo.obj tgificon.obj
DOCFILES=	Copyright HISTORY README
SPICE_FILES=	README BZ.mod DN.mod DN.sym MN.mod MN.sym MP.mod MP.sym \
		SN.mod SN.sym SP.mod SP.sym capacitor.sym connection.sym \
		demo.obj gauge.sym ground.sym in.sym out.sym port.sym \
		resistor.0tc.sym resistor.2tc.sym resistor.h.2tc.sym \
		resistor.h.sym resistor.sym vcc.sym

post-extract:
	${RM} -f ${WRKSRC}/Tgif.tmpl
	${CP} ${WRKSRC}/Tgif.tmpl-solaris ${WRKSRC}/Tgif.tmpl

post-install:
	${MKDIR} ${INSTPREFIX}/${DOCDIR} ${INSTPREFIX}/${EXAMPLEDIR}
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} ${EXAMPLEFILES} ${INSTPREFIX}/${EXAMPLEDIR}; \
	  ${INSTALL_DATA} ${DOCFILES} ${INSTPREFIX}/${DOCDIR}
	${MKDIR} ${INSTPREFIX}/${EXAMPLEDIR}/spice
	cd ${WRKSRC}/spice; \
	  ${INSTALL_DATA} ${SPICE_FILES} ${INSTPREFIX}/${EXAMPLEDIR}/spice

.include <port.mk>
