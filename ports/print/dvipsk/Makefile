#
# $Id: Makefile,v 1.1 1999/05/19 13:00:26 kunishi Exp $
#

DISTNAME=	dvipsk-5.78
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/web2c/ \
		ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/ptex218/
DISTFILES=	web2c-7.2.tar.gz web-7.2.tar.gz \
		${DISTNAME}${EXTRACT_SUFX} dvipsk-jpatch-p1.4c.tar.gz
EXTRACT_ONLY=	web2c-7.2.tar.gz web-7.2.tar.gz dvipsk-jpatch-p1.4c.tar.gz

WRKSRC=		${WRKDIR}/web2c-7.2
GNU_CONFIGURE=	yes
MAKE_INSTALL_ARGS+=	prefix=${WRK_BASEDIR}

post-extract:
	@cd ${WRKSRC}; ${GTAR} xzf ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}

pre-patch:
	${PATCH} -p1 -s -d ${WRKSRC}/dvipsk < ${WRKDIR}/dvipsk.patch

do-install:
	cd ${WRKSRC}/dvipsk; ${MAKE_ENV} ${CCSMAKE} ${MAKE_FLAGS} ${MAKE_INSTALL_ARGS} install

.include <port.mk>