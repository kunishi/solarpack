#
# $Id: Makefile,v 1.1 2000/09/07 11:11:48 kunishi Exp $
#

PORTNAME=	PaperReview
VERSION=	2.54
PORTREV=	1

PKG=		OPENpaprv
NAME=		Paper Review System
VENDOR=		Stephen W. Liddle <http://dagwood.cs.byu.edu/PaperReview/>

MASTER_SITES=	http://dagwood.cs.byu.edu/PaperReview/src/

BUILD_DEPENDS+=	OPENmysql:${PORTSDIR}/databases/mysql \
		APACapche:${PORTSDIR}/www/apache \
		OPENmphp3:${PORTSDIR}/www/mod_php3
RUN_DEPENDS+=	OPENmysql:${PORTSDIR}/databases/mysql \
		APACapche:${PORTSDIR}/www/apache \
		OPENmphp3:${PORTSDIR}/www/mod_php3

HAS_CONFIGURE=	yes
MAKE_INSTALL_ARGS= \
		MYSQL=${INSTPREFIX} \
		CGI_BIN=${CONF_BASEDIR}/cgi-bin
PROTOTYPE_SUB+=	CONFCODE=${CONFCODE}

CONFCODE?=	conf99
CONF_BASEDIR=	${INSTPREFIX}/apache/htdocs/${CONFCODE}

pre-configure:
	${SED} -e "s|%%PREFIX%%|${PREFIX}|" \
	       -e "s|%%CONFCODE%%|${CONFCODE}|" \
		${FILESDIR}/configure.in > ${WRKSRC}/configure
	${CHMOD} 755 ${WRKSRC}/configure

do-build:
	cd ${WRKSRC}/${CONFCODE} && ${MAKE_ENV} ${CCSMAKE} ${ALL_TARGET} ${MAKE_ARGS} ${MAKE_FLAGS}

do-install:
	${MKDIR} ${CONF_BASEDIR}/cgi-bin
	cd ${WRKSRC}/${CONFCODE} && ${ENV} ${MAKE_INSTALL_ENV} ${CCSMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	${MKDIR} ${CONF_BASEDIR}/log
	${MKDIR} ${CONF_BASEDIR}/reviews
	${CHMOD} 753 ${CONF_BASEDIR}/log ${CONF_BASEDIR}/reviews
	${MKDIR} ${CONF_BASEDIR}/php
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/php/* ${CONF_BASEDIR}/php
	${MKDIR} ${CONF_BASEDIR}/image
	${INSTALL_DATA} ${WRKSRC}/bgnd.gif ${CONF_BASEDIR}/image
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/sql/createdb.sql ${CONF_BASEDIR}/${CONFCODE}create.txt
	${MKDIR} ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/README ${INSTPREFIX}/share/doc/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/sql/initdb.sql ${INSTPREFIX}/share/doc/${PORTNAME}
	${MKDIR} ${INSTPREFIX}/share/examples/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/html/* ${INSTPREFIX}/share/examples/${PORTNAME}

.include <port.mk>
