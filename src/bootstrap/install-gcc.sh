#!/bin/sh

WORKDIR=${TOPDIR}/work
DISTDIR=${TOPDIR}/distfiles
TMPPREFIX=${WORKDIR}/usr/local

SRCURL='ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/gcc/gcc-2.95.2.tar.gz'

/usr/bin/mkdir -p ${WORKDIR} ${DISTDIR}
(cd ${DISTDIR} && ${TMPPREFIX}/bin/ftp ${SRCURL})
(cd ${WORKDIR}; \
  gzip -c -d ${DISTDIR}/gcc-2.95.2.tar.gz | /usr/bin/tar xfBp -)
(cd ${WORKDIR}/gcc-2.95.2; \
  ./configure --prefix=${TMPPREFIX}; \
  /usr/ccs/bin/make bootstrap; \
  /usr/ccs/bin/make install)
