#
# $Id: Makefile,v 1.2 1999/06/05 09:24:52 kunishi Exp $
#

PKG=		OPENqpop
NAME=		Berkeley POP3 server (now maintained by Qualcomm)
VERSION=	2.53
VENDOR=		Qualcomm Com. <http://www.qualcomm.com/>

DISTNAME=	qpopper${VERSION}
PKGNAME=	qpopper-${VERSION}
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/popper/
EXTRACT_SUFX=	.tar.Z

.if defined(POPD_YOUBIN_SUPPORT)
PKGNAME=	qpopper-youbin-${VERSION}
O_DEFS+=	-DYOUBIN -DCALLED_FROM_POPD
.endif

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	O_DEFS="${O_DEFS}"

post-patch:
	${CP} ${FILESDIR}/sendto.c ${WRKSRC}

pre-install:
	${MKDIR} ${WRK_BASEDIR}/bin
	${MKDIR} ${WRK_BASEDIR}/sbin
	${MKDIR} ${WRK_BASEDIR}/man/man8

do-install:
	cd ${WRKSRC} && \
	  ${INSTALL_PROGRAM} -o root -m 4111 popauth ${WRK_BASEDIR}/bin
	cd ${WRKSRC} && \
	  ${INSTALL_PROGRAM} popper ${WRK_BASEDIR}/sbin
	cd ${WRKSRC} && \
	  ${INSTALL_MAN} popauth.8 popper.8 ${WRK_BASEDIR}/man/man8

.include <port.mk>
