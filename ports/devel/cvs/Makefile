#
# $Id: Makefile,v 1.10 2000/04/26 08:32:45 kunishi Exp $
#

PKG=		OPENcvs
NAME=		CVS, Concurrent Version System
VERSION=	1.10.8
VENDOR=		Cyclic Software, Com. <http://www.cyclic.com/>

DISTNAME=	cvs-${VERSION}
MASTER_SITES=	http://download.cyclic.com/pub/cvs-${VERSION}/
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

CLASS_INFO=	info/cvs.info

BUILD_DEPENDS+=	OPENperl:${PORTSDIR}/lang/perl5
RUN_DEPENDS+=	OPENperl:${PORTSDIR}/lang/perl5

.include <port.mk>
