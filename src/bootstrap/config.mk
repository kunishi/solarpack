#
# Makefile configuration file for standard Solaris make
# $Id: config.mk,v 1.2 2000/05/11 06:14:36 kunishi Exp $
#

WORKDIR=	${TOPDIR}/work
DISTDIR=	${TOPDIR}/distfiles
TMPPREFIX=	${WORKDIR}/usr/local
BOOTSTRAPDIR=	${TOPDIR}/bootstrap

ECHO_MSG=	/usr/bin/echo
ENV=		/usr/bin/env
EXTRACT_CMD=	/usr/bin/tar xf
MAKE=		/usr/ccs/bin/make
MKDIR=		/usr/bin/mkdir -p
PATCH=		/usr/bin/patch
TOUCH=		/usr/bin/touch
DO_NADA=	/usr/bin/true
INSTALL_PROGRAM=	/usr/ucb/install -c -m 755

FTP=		${TMPPREFIX}/bin/ftp
GUNZIP=		${TMPPREFIX}/bin/gzip -c -d
GNUPATCH=	${TMPPREFIX}/bin/patch

MAKEFILE=	${BOOTSTRAPDIR}/Makefile.${TARGET_CMD}

FETCH_COOKIE=		${WORKDIR}/.${TARGET_CMD}_fetch_done
EXTRACT_COOKIE=		${WORKDIR}/.${TARGET_CMD}_extract_done
PATCH_COOKIE=		${WORKDIR}/.${TARGET_CMD}_patch_done
CONFIGURE_COOKIE=	${WORKDIR}/.${TARGET_CMD}_configure_done
BUILD_COOKIE=		${WORKDIR}/.${TARGET_CMD}_build_done
INSTALL_COOKIE=		${WORKDIR}/.${TARGET_CMD}_install_done

MAINTAINER=	kunishi@c.oka-pu.ac.jp
