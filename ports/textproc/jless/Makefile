#
# $Id: Makefile,v 1.6 2001/11/13 04:48:41 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-less
VERSION=	358+iso254
PORTREV=	1

PKG=		OPUCjless
NAME=		less, a paginator

VENDOR=		Kazushi Marukawa (jam@pobox.com), http://www.pobox.com/~jam/less/
DISTNAME=	less-358
MASTER_SITES=	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/less/ \
		ftp://www.io.com/~kazushi/less/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/distfiles/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		regex_cs-lwp9k.shar.gz
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

PATCH_SITES=	ftp://www.io.com/~kazushi/less/ \
		ftp://ftp.jp.freebsd.org/pub/FreeBSD/ports/distfiles/
PATCHFILES=	less-358-iso254.patch.gz

PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-cs-regex

post-patch:
	@cd ${WRKSRC} && ${GZCAT} ${DISTDIR}/regex_cs-lwp9k.shar.gz | ${SH}

.include <port.mk>
