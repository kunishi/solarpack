#
# $Id: Makefile,v 1.3 2000/09/27 01:27:58 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	flash-plugin
VERSION=	4.0r12
PORTREV=	1

PKG=		MCRMflash
NAME=		Macromedia Flash Plugin
VENDOR=		Macromedia Corp.
ONLY_FOR_ARCHS=	sparc

DISTNAME=	flash_solaris
MASTER_SITES=	http://www.macromedia.com/

RUN_DEPENDS=	NSjacomm:${PORTSDIR}/japanese/netscape47-communicator
WRKSRC=		${WRKDIR}/Solaris
NO_BUILD=	yes

PLUGINDIR=	${INSTPREFIX}/netscape/plugins

do-fetch:
	@if test ! -f ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}; then \
	  ${ECHO_MSG} "Fetch ${DISTNAME}${EXTRACT_SUFX} manually from ${MASTER_SITES},"; \
	  ${ECHO_MSG} "and put it into ${DISTDIR}."; \
	  ${FALSE}; \
	fi

do-install:
	${MKDIR} ${PLUGINDIR}
	${INSTALL_DATA} ${WRKSRC}/libflashplayer.so ${PLUGINDIR}
	${INSTALL_DATA} ${WRKSRC}/ShockwaveFlash.class ${PLUGINDIR}
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/README.Solaris ${INSTPREFIX}/share/doc/${PORTNAME}

.include <port.mk>
