.PHONY: extract patch configure build prepackage package clean pkgclean

all:	build

PKGNAME=	wget-1.5.3

CURDIR:=	$(shell pwd)

extract:	work/.extract_done
patch:		work/.patch_done
configure:	work/.configure_done
build:		work/.build_done
install:	work/.install_done
package:	work/.package_done

work/.extract_done:
	mkdir -p work
	cd work && gtar xzf /work/net/wget-1.5.3.tar.gz
	touch $@

work/.patch_done:	work/.extract_done
	gmake extract
	# nothing done with patch
	touch $@

work/.configure_done:	work/.patch_done
	gmake patch
	cd work/wget-1.5.3 && ./configure
	touch $@

work/.build_done:	work/.configure_done
	gmake configure
	cd work/wget-1.5.3 && gmake
	touch $@

work/.install_done:	work/.build_done
	gmake build
	cd work/wget-1.5.3 && gmake install prefix=${CURDIR}/work/local
	mkdir -p work/local/share/examples/wget
	ginstall -c work/wget-1.5.3/doc/sample.wgetrc work/local/share/examples/wget/sample.wgetrc
	sed -e "s?%%PKGDIR%%?${CURDIR}/pkg?" \
	    -e "s?%%WRK_BASEDIR%%?${CURDIR}/work/local?" \
	    pkg/prototype.in > pkg/prototype
	sed -e "s?%%ARCH%%?$(shell uname -p)?" \
	    -e "s?%%BASEDIR%%?/usr/local?" pkg/pkginfo.in > pkg/pkginfo
	touch $@

work/.package_done:	work/.install_done
	gmake install
	mkdir -p ${CURDIR}/work/spool
	pkgmk -d ${CURDIR}/work/spool -f ${CURDIR}/pkg/prototype
	pkgtrans -s ${CURDIR}/work/spool ${CURDIR}/${PKGNAME} all
	gzip -9 ${PKGNAME}

clean:
	rm -rf work pkg/pkginfo pkg/prototype

pkgclean:	clean
	rm -rf ${CURDIR}/${PKGNAME}.gz
