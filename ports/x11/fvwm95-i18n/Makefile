include ../../include/pre.mk

DISTNAME=	fvwm95-2.0.43a-Imake
PKGNAME=	fvwm95-i18n-2.0.43a
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/misc/fvwm95/
EXTRACT_SUFX=	.tgz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm95-2.0.43a.patch
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
PATCH_SITES=	${MASTER_SITES}
PATCHFILES=	fvwm95-2.0.43a-Imake.I18N.diff.gz
PATCH_DIST_STRIP=	-p1

USE_IMAKE=	yes

pre-patch:
	@cd ${WRKSRC}/fvwm; ${PATCH} -p0 -N < ${DISTDIR}/fvwm95-2.0.43a.patch

include ../../include/pkgbuild.mk
