#
# $Id: Makefile,v 1.2 2001/11/08 08:45:35 kunishi Exp $
#

PORTNAME=	tcp_wrappers
VERSION=	7.6
PORTREV=	3

PKG=		OPENtcpw
NAME=		TCP/IPv daemon wrapper package

MASTER_SITES=	ftp://ftp.porcupine.org/pub/security/
DISTNAME=	${PORTNAME}_${VERSION}-ipv6.1

ALL_TARGET=	sunos5
DOCS=		BLURB Banners.Makefile CHANGES DISCLAIMER \
		README README.IRIX README.NIS
DOCS+=		README.ipv6

do-install:
	${MKDIR} ${INSTPREFIX}/bin ${INSTPREFIX}/include ${INSTPREFIX}/lib ${INSTPREFIX}/sbin ${INSTPREFIX}/share/doc/${PORTNAME}
	${MKDIR} ${INSTPREFIX}/man/man3 ${INSTPREFIX}/man/man5 ${INSTPREFIX}/man/man8
	${INSTALL_DATA} ${WRKSRC}/tcpd.h ${INSTPREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libwrap.a ${INSTPREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/tcpd ${INSTPREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/tcpdchk ${WRKSRC}/tcpdmatch \
		${INSTPREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/try-from ${WRKSRC}/safe_finger \
		${INSTPREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpd.8 ${WRKSRC}/tcpdchk.8 ${WRKSRC}/tcpdmatch.8 \
		${INSTPREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/hosts_access.3 ${INSTPREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/hosts_access.5 ${WRKSRC}/hosts_options.5 \
		${INSTPREFIX}/man/man5
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${INSTPREFIX}/share/doc/${PORTNAME}
	${SED} -e 's|%%PREFIX%%|${PREFIX}|g' \
		< ${FILESDIR}/convert-inetd-conf.sh.in > ${INSTPREFIX}/share/doc/${PORTNAME}/convert-inetd-conf.sh

.include <port.mk>
