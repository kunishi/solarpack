#
# $Id: Makefile,v 1.1 2001/05/28 13:56:55 kunishi Exp $
#

PORTNAME=	mod_jk
VERSION=	3.2.1
PORTREV=	1

PKG=		APACmodjk
NAME=		Apache module for jakarta-tomcat connection

VENDOR=		Apache Software Foundation, http://www.apache.org/
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-tomcat/release/v${VERSION}/src/
DISTNAME=	jakarta-tomcat-${VERSION}-src

BUILD_DEPENDS=	APACapche:${PORTSDIR}/www/apache
RUN_DEPENDS=	APACapche:${PORTSDIR}/www/apache

WRKSRC=		${WRKDIR}/jakarta-tomcat-${VERSION}-src/src/native/apache1.3
EDITABLE_FILES=	apache/conf/mod_jk.conf

APXS?=		${LOCALBASE}/apache/bin/apxs

do-build:
	cd ${WRKSRC}; \
	  ${APXS} -o mod_jk.so -DSOLARIS -I../jk -I/usr/java1.2/include \
	    -I/usr/java1.2/include/solaris -c *.c ../jk/*.c -lrt
	${SED} -e 's,%%PREFIX%%,${PREFIX},g' ${FILESDIR}/mod_jk.conf > ${WRKDIR}/mod_jk.conf

do-install:
	${MKDIR} ${INSTPREFIX}/lib/mod_jk
	${CP} ${WRKSRC}/mod_jk.so ${INSTPREFIX}/lib/mod_jk
	${MKDIR} ${INSTPREFIX}/apache/conf
	${INSTALL_DATA} ${WRKDIR}/mod_jk.conf ${INSTPREFIX}/apache/conf

.include <port.mk>
