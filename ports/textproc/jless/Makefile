#
# $Id: Makefile,v 1.1 1999/10/26 02:48:22 kunishi Exp $
#

PKG=		OPENjless
NAME=		less, a paginator
VERSION=	332+iso248
VENDOR=		Kazushi Marukawa (jam@pobox.com), http://www.pobox.com/~jam/less/

DISTNAME=	less-332
PKGNAME=	ja-less-332+iso248
MASTER_SITES=	ftp://ring.nacsis.ac.jp/pub/GNU/less/ \
		ftp://ftp.big.or.jp/pub/usr2/jam/less/contrib/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		regex_cs-lwp9k.shar.gz
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

PATCH_SITES=	ftp://ftp.big.or.jp/pub/usr2/jam/less/
PATCHFILES=	less-332-iso242.patch.gz \
		less-332-iso242-243.patch.gz \
		less-332-iso243-244.patch.gz \
		less-332-iso244-245.patch.gz \
		less-332-iso245-247.patch.gz \
		less-332-iso247-248.patch.gz

PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-cs-regex

post-patch:
	@cd ${WRKSRC} && ${GZCAT} ${DISTDIR}/regex_cs-lwp9k.shar.gz | ${SH}

.include <port.mk>
