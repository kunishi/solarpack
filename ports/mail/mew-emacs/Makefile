#
# $Id: Makefile,v 1.7 2001/03/16 10:14:11 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME?=	mew-${EMACS}
VERSION=	1.94.2
PORTREV=	1

PKG=		OPENmew
NAME=		Mew, Messaging in the Emacs World

VENDOR=		Mew developing team <http://www.mew.org/>
MASTER_SITES=	ftp://ftp.mew.org/pub/Mew/
DISTNAME=	mew-${VERSION}

INSTALL_TARGET=	install install-info install-jinfo
MAKE_INSTALL_ARGS+=	PREFIX=${INSTPREFIX}

RUN_DEPENDS=	OPENim:${PORTSDIR}/mail/im
CLASS_INFO=	info/mew.info info/mew.jis.info

EMACS?=		emacs
.if (${EMACS} == "mule")
SITELISPDIR=	share/emacs/site-lisp
MAKE_FLAGS+=	EMACS=mule
.endif
.if (${EMACS} == "emacs20")
SITELISPDIR=	share/emacs/site-lisp
MAKE_FLAGS+=	EMACS=emacs
.endif

PROTOTYPE_SUB+=	SITELISPDIR=${SITELISPDIR}

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/info
	${MKDIR} ${INSTPREFIX}/${SITELISPDIR}/mew

post-install:
	${SED} -e 's?%%PREFIX%%?${PREFIX}?' ${FILESDIR}/mew-setup.el.in \
	  > ${INSTPREFIX}/${SITELISPDIR}/mew-setup.el
	${MKDIR} ${INSTPREFIX}/share/mew/contrib
	${INSTALL_DATA} ${WRKSRC}/contrib/* ${INSTPREFIX}/share/mew/contrib
	${MKDIR} ${INSTPREFIX}/share/mew/patches
	${INSTALL_DATA} ${WRKSRC}/patches/* ${INSTPREFIX}/share/mew/patches

.include <port.mk>
