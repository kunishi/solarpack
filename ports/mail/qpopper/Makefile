#
# $Id: Makefile,v 1.1 1999/05/21 10:54:28 kunishi Exp $
#

DISTNAME=	qpopper2.53
PKGNAME=	qpopper-2.53
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/popper/
EXTRACT_SUFX=	.tar.Z

.if defined(POPD_YOUBIN_SUPPORT)
PKGNAME=	qpopper-youbin-2.53
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
