#
# $Id: Makefile,v 1.5 2001/05/28 13:56:53 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	apache
VERSION=	1.3.20
PORTREV=	1

PKG=		APACapche
NAME=		Apache Web Server
VENDOR=		The Apache Software Foundation <http://www.apache.org/httpd.html>

MASTER_SITES=	http://www.apache.org/dist/httpd/
DISTNAME=	${PORTNAME}_${VERSION}

HAS_CONFIGURE=	yes
USE_PERL5=	yes
CONFIGURE_ARGS=	--enable-module=most --enable-shared=max
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
	${CHOWN} -R root:sys ${INSTPREFIX}

.include <port.mk>
