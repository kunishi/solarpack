#
# $Id: Makefile,v 1.2 2001/11/30 15:09:08 kunishi Exp $
#

PORTNAME=	smartdoc
VERSION=	0.7
PORTREV=	1

PKG=		OPUCsdoc
NAME=		SmartDoc, a tool for creating documents based on XML

MASTER_SITES=	http://www.asahi-net.or.jp/~dp8t-asm/java/tools/SmartDoc/
DISTNAME=	setup${VERSION:S/.//g}
EXTRACT_FILES=	# none
WRKSRC=		${WRKDIR}/sdoc

USE_ZIP=	yes
NO_BUILD=	yes

do-extract:
	java -jar ${DISTDIR}/${DISTFILES} -batch \
	  -bindir:${WRKDIR}/bin -installbasedir:${WRKSRC}

pre-patch:
	${PERL} -pi -e 's,${WRKSRC},${JAVADIR}/${PORTNAME},g;' ${WRKDIR}/bin/sdoc

pre-install:
	@${MKDIR} ${JAVADIR_TMP} ${BINDIR_TMP} ${SITELISPDIR_TMP}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/bin/sdoc ${BINDIR_TMP}
	${MKDIR} ${JAVADIR_TMP}/${PORTNAME}
	cd ${WRKSRC}; \
	  ${TAR} cf - * | (cd ${JAVADIR_TMP}/${PORTNAME}; ${TAR} xf -)
	cd ${WRKSRC}; \
	  ${INSTALL_DATA} etc/sdoc-helper.el etc/sdoc-mode.el ${SITELISPDIR_TMP}

.include <port.mk>
