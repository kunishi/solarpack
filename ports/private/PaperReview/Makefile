#
# $Id: Makefile,v 1.2 2000/09/12 11:26:20 kunishi Exp $
#

PORTNAME=	PaperReview
VERSION=	2.54
PORTREV=	4

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

PREFIX?=	${LOCALBASE}/apache/htdocs
CONFCODE?=	ER2001
CONF_BASEDIR=	${INSTPREFIX}/${CONFCODE}

pre-configure:
	${SED} -e "s|%%PREFIX%%|${PREFIX}|" \
	       -e "s|%%LOCALBASE%%|${LOCALBASE}|" \
	       -e "s|%%CONFCODE%%|${CONFCODE}|" \
		${FILESDIR}/configure.in > ${WRKSRC}/configure
	${CHMOD} 755 ${WRKSRC}/configure

do-build:
	cd ${WRKSRC}/${CONFCODE} && ${MAKE_ENV} ${CCSMAKE} ${ALL_TARGET} ${MAKE_ARGS} ${MAKE_FLAGS}

do-install:
	${MKDIR} ${CONF_BASEDIR}/cgi-bin
	${MKDIR} ${CONF_BASEDIR}/doc
	${MKDIR} ${CONF_BASEDIR}/examples
	${MKDIR} ${CONF_BASEDIR}/images
	${MKDIR} ${CONF_BASEDIR}/log
	${MKDIR} ${CONF_BASEDIR}/php
	${MKDIR} ${CONF_BASEDIR}/reviews
	cd ${WRKSRC}/${CONFCODE} && ${ENV} ${MAKE_INSTALL_ENV} ${CCSMAKE} ${INSTALL_TARGET} ${MAKE_INSTALL_ARGS} ${MAKE_FLAGS}
	${CHMOD} 753 ${CONF_BASEDIR}/log ${CONF_BASEDIR}/reviews
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/php/* ${CONF_BASEDIR}/php
	${INSTALL_DATA} ${WRKSRC}/bgnd.gif ${CONF_BASEDIR}/images
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/sql/createdb.sql ${CONF_BASEDIR}/${CONFCODE}create.txt
	${INSTALL_DATA} ${WRKSRC}/README ${CONF_BASEDIR}/doc
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/sql/initdb.sql ${CONF_BASEDIR}/doc
	${INSTALL_DATA} ${WRKSRC}/${CONFCODE}/html/* ${CONF_BASEDIR}/examples

.include <port.mk>
