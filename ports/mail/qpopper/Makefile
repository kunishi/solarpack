#
# $Id: Makefile,v 1.6 2000/09/27 01:27:52 kunishi Exp $
#

.include <port.pre.mk>

.if defined(POPD_YOUBIN_SUPPORT)
PORTNAME=	qpopper-youbin
.else
PORTNAME=	qpopper
.endif
VERSION=	2.53
PORTREV=	1

PKG=		OPENqpop
NAME=		Berkeley POP3 server (now maintained by Qualcomm)

VENDOR=		Qualcomm Com. <http://www.qualcomm.com/>
DISTNAME=	qpopper${VERSION}
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/popper/old/
EXTRACT_SUFX=	.tar.Z

.if defined(POPD_YOUBIN_SUPPORT)
O_DEFS+=	-DYOUBIN -DCALLED_FROM_POPD
.endif

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	O_DEFS="${O_DEFS}"

post-patch:
	${CP} ${FILESDIR}/sendto.c ${WRKSRC}

pre-install:
	${MKDIR} ${INSTPREFIX}/bin
	${MKDIR} ${INSTPREFIX}/sbin
	${MKDIR} ${INSTPREFIX}/man/man8

do-install:
	cd ${WRKSRC} && \
	  ${INSTALL_PROGRAM} -o root -m 4111 popauth ${INSTPREFIX}/bin
	cd ${WRKSRC} && \
	  ${INSTALL_PROGRAM} popper ${INSTPREFIX}/sbin
	cd ${WRKSRC} && \
	  ${INSTALL_MAN} popauth.8 popper.8 ${INSTPREFIX}/man/man8

.include <port.mk>
