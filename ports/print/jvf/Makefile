#
# $Id: Makefile,v 1.5 2000/09/27 01:27:54 kunishi Exp $
#

.include <port.pre.mk>

PORTNAME=	ja-ptex-vf
VERSION=	1.0
PORTREV=	1

PKG=		PTEXjvf
NAME=		Japanese virtual fonts for ASCII pTeX

VENDOR=		ASCII Corp., Inc. <http://www.ascii.co.jp/pb/ptex/>
DISTNAME=	standard
MASTER_SITES=	ftp://ftp.ascii.co.jp/pub/TeX/ascii-ptex/jvf/
DISTFILES=	${DISTNAME}.tar.gz jis.tar.gz morisawa.tar.gz nmin-ngoth.tar.gz

WRKSRC=		${WRKDIR}
NO_BUILD=	yes
TFM_FONTS_DVIPS=	gbm.tfm gbmv.tfm rml.tfm rmlv.tfm
VF_FONTS=	goth5.vf goth6.vf goth7.vf goth8.vf goth9.vf goth10.vf \
		min5.vf min6.vf min7.vf min8.vf min9.vf min10.vf \
		tgoth5.vf tgoth6.vf tgoth7.vf tgoth8.vf tgoth9.vf tgoth10.vf \
		tmin5.vf tmin6.vf tmin7.vf tmin8.vf tmin9.vf tmin10.vf

do-install:
	${MKDIR} ${INSTPREFIX}/share/texmf/fonts/tfm/dvips
.for font in ${TFM_FONTS_DVIPS}
	${INSTALL_DATA} ${WRKSRC}/standard/tfm/dvips/${font} \
	  ${INSTPREFIX}/share/texmf/fonts/tfm/dvips
.endfor
	${MKDIR} ${INSTPREFIX}/share/texmf/fonts/vf/standard
.for font in ${VF_FONTS}
	${INSTALL_DATA} ${WRKSRC}/standard/vf/${font} \
	  ${INSTPREFIX}/share/texmf/fonts/vf/standard
.endfor
	${MKDIR} ${INSTPREFIX}/share/texmf/dvips/base
	${INSTALL_DATA} ${WRKSRC}/standard/standard.map \
	  ${INSTPREFIX}/share/texmf/dvips/base

.include <port.mk>
