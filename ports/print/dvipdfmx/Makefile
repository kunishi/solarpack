#
# $Id: Makefile,v 1.2 2003/02/27 09:22:44 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	dvipdfmx
VERSION=	20021230
PORTREV=	1

PKG=		OPUCdvpdx
NAME=		DVI to PDF converter, CJK version

MASTER_SITES=	http://project.ktug.or.kr/dvipdfmx/snapshot/

BUILD_DEPENDS=	OPUCptexe:${PORTSDIR}/print/ptex \
		OPUCopssl:${PORTSDIR}/security/openssl

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-openssl=${LOCALBASE}/ssl
USE_GMAKE=	yes

EDITABLE_FILES=	share/texmf/dvipdfm/config/dvipdfmx.cfg

.include <port.mk>
