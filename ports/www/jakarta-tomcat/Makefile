#
# $Id: Makefile,v 1.1 2001/05/28 13:56:54 kunishi Exp $
#

PORTNAME=	jakarta-tomcat
VERSION=	3.2.1
PORTREV=	1

PKG=		APACjtomc
NAME=		Apache Jakarta Tomcat

VENDOR=		Apache Software Foundation, http://www.apache.org/
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v${VERSION}/bin/

NO_BUILD=	yes
CLASS_INITD=	share/examples/tomcat/tomcat
EDITABLE_FILES=	tomcat/conf/build.xml \
		tomcat/conf/jni_server.xml \
		tomcat/conf/jni_workers.properties \
		tomcat/conf/manifest.servlet \
		tomcat/conf/mod_jk.conf \
		tomcat/conf/obj.conf \
		tomcat/conf/server.xml \
		tomcat/conf/test-tomcat.xml \
		tomcat/conf/tomcat-users.xml \
		tomcat/conf/tomcat.conf \
		tomcat/conf/tomcat.policy \
		tomcat/conf/tomcat.properties \
		tomcat/conf/uriworkermap.properties \
		tomcat/conf/web.dtd \
		tomcat/conf/web.xml \
		tomcat/conf/workers.properties \
		tomcat/conf/wrapper.properties

do-install:
	${MKDIR} ${INSTPREFIX}/tomcat
	(cd ${WRKDIR}/${DISTNAME}; ${TAR} cf - *) | \
	  (cd ${INSTPREFIX}/tomcat; ${TAR} xfBp -)
	${MKDIR} ${INSTPREFIX}/share/examples/tomcat
	${SED} -e 's,%%PREFIX%%,${PREFIX},g' ${FILESDIR}/tomcat.sh > ${INSTPREFIX}/share/examples/tomcat/tomcat

post-install:
	${CHOWN} -R ${BINOWN}:${BINGRP} ${INSTPREFIX}/tomcat

.include <port.mk>
