#
# $Id: Makefile,v 1.4 2000/09/27 01:27:39 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	mysql
VERSION=	3.22.32
PORTREV=	2

PKG=		OPENmysql
NAME=		Multithreaded SQL database
VENDOR=		http://www.mysql.com/

MASTER_SITES=	http://www.mysql.com/Downloads/MySQL-3.22/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/mysql.info
CLASS_INITD=	share/mysql/mysql.server
EDITABLE_FILES=	etc/my.cnf

post-install:
	${MKDIR} ${INSTPREFIX}/etc
	${INSTALL_DATA} ${INSTPREFIX}/share/mysql/my-example.cnf \
		${INSTPREFIX}/etc/my.cnf

.include <port.mk>
