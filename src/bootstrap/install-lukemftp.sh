#!/bin/sh

WORKDIR=${TOPDIR}/work
DISTDIR=${TOPDIR}/distfiles

/usr/bin/mkdir -p ${WORKDIR} ${DISTDIR}
if [ ! -f ${DISTDIR}/lukemftp-1.1.tar.gz ]; then
  echo 'Get lukemftp distfiles from the following URL manually:'
  echo '  ftp://ftp.netbsd.org/pub/NetBSD/misc/lukemftp/lukemftp-1.1.tar.gz'
  exit 1
fi
(cd ${WORKDIR}; \
  (gzip -c -d ${DISTDIR}/lukemftp-1.1.tar.gz | /usr/bin/tar xfBp -))
(cd ${WORKDIR}/lukemftp-1.1; \
  ./configure --prefix=${WORKDIR}/usr/local; \
  /usr/ccs/bin/make; \
  /usr/ccs/bin/make install)
