#
# $Id: Makefile,v 1.3 2000/09/27 01:27:58 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	apache
VERSION=	1.3.12
PORTREV=	2

PKG=		APACapche
NAME=		Apache Web Server
VENDOR=		The Apache Software Foundation <http://www.apache.org/httpd.html>

MASTER_SITES=	http://www.apache.org/dist/
DISTNAME=	${PORTNAME}_${VERSION}

HAS_CONFIGURE=	yes
USE_PERL5=	yes
CONFIGURE_ARGS=	--enable-module=so
MAKE_INSTALL_ARGS+= root=${WRKDIR}

CLASS_INITD=	share/examples/apache/apache
EDITABLE_FILES=	apache/conf/access.conf \
		apache/conf/httpd.conf \
		apache/conf/magic \
		apache/conf/mime.types \
		apache/conf/srm.conf
 
post-install:
	${MKDIR} ${INSTPREFIX}/share/examples/apache
	${SED} -e 's!%%PREFIX%%!${PREFIX}!g' ${FILESDIR}/apache > ${INSTPREFIX}/share/examples/apache/apache

.include <port.mk>
