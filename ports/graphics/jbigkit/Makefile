#
# $Id: Makefile,v 1.1 2000/06/19 05:44:52 kunishi Exp $
#

PORTNAME=	jbigkit
VERSION=	1.2
PORTREV=	1

PKG=		OPENjbig
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
INST_LIB=	${WRKSRC}/libjbig/libjbig.a
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
	${MKDIR} ${INSTPREFIX}/share/doc/jbigkit
	${INSTALL_DATA} ${INST_DOC} ${INSTPREFIX}/share/doc/jbigkit

.include <port.mk>
