#
# $Id: Makefile,v 1.4 2001/11/13 11:07:37 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	javacc
VERSION=	1.1
PORTREV=	1

PKG=		METAjavcc
NAME=		JavaCC package
VENDOR=		Metamata, Inc. <http://www.metamata.com/JavaCC/>

MASTER_SITES=	#
DISTFILES=	JavaCC1_1.zip Docs.class

NO_BUILD=	yes
IS_INTERACTIVE=	yes

JAVA?=		/usr/bin/java
JAVA_OPTS=	-classpath ".:/usr/java/lib/classes.zip"
JAVACC_BASEDIR=	${INSTPREFIX}/share/java/JavaCC
JAVACC_BIN=	javacc jjdoc jjtree

pre-fetch:
.for file in ${DISTFILES}
.if defined(${MASTER_SITES_LOCAL}) && !exists(${MASTER_SITE_LOCAL}/${file})
	${ECHO_MSG} "Download ${file} manually from ${VENDOR}."
.endif
.endfor

do-extract:
	@if [ -d ${WRKDIR} ]; then ${RM} -rf ${WRKDIR}; fi
	@${MKDIR} ${WRKDIR}
	cd ${WRKDIR} && ${UNZIP} ${DISTDIR}/JavaCC1_1.zip
	${CP} ${DISTDIR}/Docs.class ${WRKDIR}

pre-install:
	@${ECHO_MSG} "This ports needs interactive installation."
	@${ECHO_MSG} "Make sure the software should be installed into "
	@${ECHO_MSG} "${JAVACC_BASEDIR}."
	@${ECHO_MSG} "Type this directory when the installer asks the directory"
	@${ECHO_MSG} "to be installed."

do-install:
	cd ${WRKDIR} && ${JAVA} ${JAVA_OPTS} JavaCC1_1 -c
	cd ${WRKDIR} && ${JAVA} ${JAVA_OPTS} Docs -o ${JAVACC_BASEDIR}/docs

post-install:
	${MKDIR} ${INSTPREFIX}/share/java/classes
	${MV} ${JAVACC_BASEDIR}/JavaCC.zip ${INSTPREFIX}/share/java/classes
	${MKDIR} ${INSTPREFIX}/bin
.for file in ${JAVACC_BIN}
	${PERL} -pi -e 's|${JAVACC_BASEDIR}|${PREFIX}/share/java/classes|;' ${JAVACC_BASEDIR}/bin/${file}
	${INSTALL_SCRIPT} ${JAVACC_BASEDIR}/bin/${file} ${INSTPREFIX}/bin
.endfor

.include <port.mk>
