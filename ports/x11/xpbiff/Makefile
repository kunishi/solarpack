#
# $Id: Makefile,v 1.8 2001/03/02 06:02:51 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	xpbiff
VERSION=	1.27
PORTREV=	2

PKG=		OPENxpbyb
NAME=		Xpbiff with youbin support

VENDOR=		Kazuhiko Shutoh <shutoh@lm.emi.yamaha.co.jp>
DISTNAME=	${PORTNAME}
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
EXTRACT_SUFX=	.tar.Z
DISTFILES=	${DISTNAME}-${VERSION}-with-YOUBIN.tar.gz.uu

PATCH_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/xpbiff/
PATCHFILES=	${DISTNAME}-${VERSION}-with-YOUBIN.patch-1
PATCH_DIST_STRIP=	-p1

RUN_DEPENDS=	OPENyoubi:${PORTSDIR}/mail/youbin

USE_IMAKE=	yes
NO_INSTALL_MAN=	yes

do-extract:
	@(cd ${DISTDIR}; \
	  if [ ! -f ${DISTNAME}.tar.gz ]; then \
	   uudecode ${DISTFILES}; \
	  fi)
	@${RM} -rf ${WRKDIR}
	@${MKDIR} ${WRKDIR}
	@(cd ${WRKDIR}; ${TAR} -xzf ${DISTDIR}/${DISTNAME}.tar.gz)

post-install:
	@${MKDIR} ${INSTPREFIX}/lib/app-defaults
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/XPbiff*.ad ${INSTPREFIX}/lib/app-defaults
	@${MKDIR} ${INSTPREFIX}/share/doc/xpbiff
	@${INSTALL} -c -m 644 -o root -g staff \
	  ${WRKSRC}/README* ${INSTPREFIX}/share/doc/xpbiff

.include <port.mk>
