#
# $Id: Makefile,v 1.2 2000/01/07 01:53:09 kunishi Exp $
#
# This file is only for maitenance.
# Users do not need to use this makefile in any case.

CVSROOT=	bloodstone:/export/share/cvsroot

# redefinition of CORE_TOOLS (copied from ../Makefile.in)
CORE_TOOLS=	bmake gcc gmake gtar gzip lukemftp md5 patch texinfo

CORE_TOOLS+=	Mk Template

.PHONY: none checkout-core-ports

all:	none

none:
	/usr/bin/true

checkout-core-ports:
	cvs -d ${CVSROOT} checkout ${CORE_TOOLS}
