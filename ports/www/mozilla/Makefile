#
# $Id: Makefile,v 1.1 2000/09/26 09:05:33 kunishi Exp $
#

PORTNAME=	mozilla
VERSION=	M17
PORTREV=	1

PKG=		MZLAmzla
NAME=		The mozilla ver 0.0 communicator web-surfboard
VENDOR=		The Mozilla Organization <http://www.mozilla.org/>

MASTER_SITES=	ftp://ftp.mozilla.org/pub/mozilla/releases/${VERSION:S/M/m/}/src/
DISTNAME=	${PORTNAME}-source-${VERSION}
WRKSRC=		${WRKDIR}/${PORTNAME}

LIB_DEPENDS=	GNUgtk:${PORTSDIR}/x11/gtk \
		GNUorbit:${PORTSDIR}/devel/ORBit

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_PERL5=	yes
CONFIGURE_ARGS+=	--disable-debug \
			--enable-optimize \
			--enable-strip-libs

post-build:
	${SED} -e "s|@PREFIX@|${PREFIX}|g" \
		${FILESDIR}/mozilla.sh > ${WRKSRC}/mozilla
	${CHMOD} 555 ${WRKSRC}/mozilla
	(cd ${WRKSRC}/dist/bin; \
	  ${ENV} LD_LIBRARY_PATH=. MOZILLA_FIVE_HOME=. ./regxpcom; \
	  ${ENV} LD_LIBRARY_PATH=. MOZILLA_FIVE_HOME=. ./regchrome)

do-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/lib/mozilla
	${CHMOD} 755 ${INSTPREFIX}/lib/mozilla
	cd ${WRKSRC}/dist/bin && ${TAR} -chf - * | \
		${TAR} -xf - -C ${INSTPREFIX}/lib/mozilla
	${CHOWN} -R root:bin ${INSTPREFIX}/lib/mozilla
	${INSTALL_SCRIPT} ${WRKSRC}/mozilla ${INSTPREFIX}/bin

.include <port.mk>
