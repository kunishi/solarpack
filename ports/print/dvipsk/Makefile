#
# $Id: Makefile,v 1.8 2000/05/17 06:42:47 kunishi Exp $
#

PORTNAME=	dvipsk
VERSION=	5.78
PORTREV=	1

PKG=		OPENadvps
NAME=		dvipsk for ASCII pTeX

VENDOR=		TeX Users Group
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/web2c/ \
		ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/
DISTFILES=	web2c-7.2.tar.gz web-7.2.tar.gz \
		${DISTNAME}${EXTRACT_SUFX} dvipsk-jpatch-p1.4c.tar.gz
EXTRACT_ONLY=	web2c-7.2.tar.gz web-7.2.tar.gz dvipsk-jpatch-p1.4c.tar.gz

RUN_DEPENDS+=	OPENptexj:${PORTSDIR}/print/ptex

WRKSRC=		${WRKDIR}/web2c-7.2
GNU_CONFIGURE=	yes
MAKE_INSTALL_ARGS+=	prefix=${INSTPREFIX} texmf=${INSTPREFIX}/share/texmf

CLASS_INFO=	info/dvips.info

post-extract:
	@cd ${WRKSRC}; ${TAR} xzf ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}

pre-patch:
	${PATCH} -p1 -s -d ${WRKSRC}/dvipsk < ${WRKDIR}/dvipsk.patch

do-install:
	cd ${WRKSRC}/dvipsk; ${MAKE_ENV} ${CCSMAKE} ${MAKE_FLAGS} ${MAKE_INSTALL_ARGS} install

post-install:
	cd ${INSTPREFIX}; ${RM} -rf share

.include <port.mk>
