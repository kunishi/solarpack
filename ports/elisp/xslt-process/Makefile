#
# $Id: Makefile,v 1.1 2001/11/30 12:42:45 kunishi Exp $
#

PORTNAME=	xslt-process
VERSION=	2.1
PORTREV=	1

PKG=		OPUCxsltp
NAME=		an Emacs minor mode for XSLT processing and debugging capabilities

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	xslt-process

USE_EMACS=	yes
NO_BUILD=	yes

pre-install:
	@${MKDIR} ${SITELISPDIR_TMP}

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${TAR} cf - . | (cd ${SITELISPDIR_TMP}/${PORTNAME}; ${TAR} xf -)
	${SED} -e 's,%%SITELISPDIR%%,${SITELISPDIR},' \
	  ${FILESDIR}/${PORTNAME}-startup.el.in > ${SITELISPDIR_TMP}/${PORTNAME}-startup.el

.include <port.mk>
