#
# $Id: Makefile,v 1.1 2001/11/30 12:42:39 kunishi Exp $
#

PORTNAME=	jde
VERSION=	2.2.9.b6
PORTREV=	1

PKG=		OPUCjde
NAME=		Java Development Environment for Emacs

MASTER_SITES=	http://jdee.sunsite.dk/
DISTNAME=	${PORTNAME}-beta
WRKSRC=		${WRKDIR}/${PORTNAME}-2.2.9beta6/lisp

BUILD_DEPENDS=	OPUCelib:${PORTSDIR}/elisp/elib \
		OPUCeieio:${PORTSDIR}/elisp/eieio \
		OPUCseman:${PORTSDIR}/elisp/semantic \
		OPUCspdbr:${PORTSDIR}/elisp/speedbar
RUN_DEPENDS=	OPUCelib:${PORTSDIR}/elisp/elib \
		OPUCeieio:${PORTSDIR}/elisp/eieio \
		OPUCseman:${PORTSDIR}/elisp/semantic \
		OPUCspdbr:${PORTSDIR}/elisp/speedbar

USE_EMACS=	yes
MAKEFILE=	makefile
MAKE_ARGS=	EIEIO=${SITELISPDIR}/eieio \
		ELIB=${SITELISPDIR}/elib \
		SEMANTIC=${SITELISPDIR}/semantic \
		SPEEDBAR=${SITELISPDIR}/speedbar

do-install:
	${MKDIR} ${SITELISPDIR_TMP}/${PORTNAME}
	cd ${WRKDIR}/jde-2.2.9beta6; \
	  ${TAR} cf - . | (cd ${SITELISPDIR_TMP}/${PORTNAME}; ${TAR} xfBp -)
	${SED} -e 's,%%JDEDIR%%,${SITELISPDIR}/jde/lisp/,' \
	  ${FILESDIR}/jde-startup.el.in > ${SITELISPDIR_TMP}/jde-startup.el

.include <port.mk>
