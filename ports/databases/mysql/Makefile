#
# $Id: Makefile,v 1.3 2000/09/08 09:06:56 kunishi Exp $
#

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
