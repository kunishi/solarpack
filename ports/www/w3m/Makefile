#
# $Id: Makefile,v 1.2 2002/03/20 09:46:52 kunishi Exp $
#

PORTNAME=	w3m
VERSION=	0.3
PORTREV=	1

PKG=		OPUCw3m
NAME=		A pager/text-based WWW browser

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	${PORTNAME}

LIB_DEPENDS=	OPUCboegc:${PORTSDIR}/devel/boehm-gc \
		OPUCopssl:${PORTSDIR}/security/openssl

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	-nonstop -prefix=${PREFIX} -lang=ja -model=monster -code=E
SCRIPT_ENV=	HOSTNAME=${HOSTNAME} WRKSRC=${WRKSRC} PREFIX=${PREFIX} \
		LOCALBASE=${LOCALBASE}
MAKEFILE=	XXMakefile
MAKE_INSTALL_ARGS=	BIN_DIR=${INSTPREFIX}/bin \
			LIB_DIR=${INSTPREFIX}/lib/w3m \
			HELP_DIR=${DOCDIR_TMP}

pre-build:
	@cd ${WRKSRC} && ${MAKE} XXMakefile

.include <port.mk>
