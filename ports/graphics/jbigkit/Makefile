#
# $Id: Makefile,v 1.3 2001/11/10 15:28:57 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	jbigkit
VERSION=	1.2
PORTREV=	2

PKG=		OPUCjbig
NAME=		Lossless compression for bi-level images such as scanned pages or faxes
VENDOR=		Markus G. Kuhn <mkuhn@acm.org>

MASTER_SITES=	ftp://ftp.informatik.uni-erlangen.de/pub/doc/ISO/JBIG/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/distfiles/

WRKSRC=		${WRKDIR}/${PORTNAME}

INST_PROG=	${WRKSRC}/pbmtools/jbgtopbm \
		${WRKSRC}/pbmtools/pbmtojbg
INST_MAN1=	${WRKSRC}/pbmtools/pbmtojbg.1 \
		${WRKSRC}/pbmtools/jbgtopbm.1
INST_INCL=	${WRKSRC}/libjbig/jbig.h
INST_LIB=	${WRKSRC}/libjbig/libjbig.a \
		${WRKSRC}/libjbig/libjbig.so.1
INST_DOC=	${WRKSRC}/libjbig/jbig.doc

do-install:
	${MKDIR} ${INSTPREFIX}/bin
	${INSTALL_PROGRAM} ${INST_PROG} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/man/man1
	${INSTALL_MAN} ${INST_MAN1} ${INSTPREFIX}/man/man1
	${MKDIR} ${INSTPREFIX}/include
	${INSTALL_DATA} ${INST_INCL} ${INSTPREFIX}/include
	${MKDIR} ${INSTPREFIX}/lib
	${INSTALL_DATA} ${INST_LIB} ${INSTPREFIX}/lib
	cd ${INSTPREFIX}/lib; ${LN} -s libjbig.so.1 libjbig.so
	${MKDIR} ${INSTPREFIX}/share/doc/jbigkit
	${INSTALL_DATA} ${INST_DOC} ${INSTPREFIX}/share/doc/jbigkit

.include <port.mk>
