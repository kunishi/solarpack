#
# $Id: Makefile,v 1.1 2001/11/30 12:49:05 kunishi Exp $
#

PORTNAME=	cvsutils
VERSION=	2001.07.05
PORTREV=	1

PKG=		OPUCcvsut
NAME=		CVS utilities which facilitate working with local working directories

MASTER_SITES=	ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/local-distfiles/knu/

BUILD_DEPENDS=	OPENcvs:${PORTSDIR}/devel/cvs
RUN_DEPENDS=	OPENcvs:${PORTSDIR}/devel/cvs

WRKSRC=		${WRKDIR}/${PORTNAME}
USE_AUTOMAKE=	yes
AUTOMAKE_ARGS=	--add-missing
USE_PERL5=	yes
MAKE_INSTALL_ARGS+=	DESTDIR=${WRKDIR}

pre-configure:
	cd ${WRKSRC}; aclocal

.include <port.mk>
