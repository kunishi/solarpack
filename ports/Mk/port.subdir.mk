#
# $Id: port.subdir.mk,v 1.2 2000/06/07 05:45:28 kunishi Exp $
#

.MAIN:	all

.if !defined(ARCH)
ARCH!=	/usr/bin/mach
.endif
.if !defined(OSREL)
OSREL!=	/usr/bin/uname -r
.endif
.if !defined(OSREL_SOLARIS)
OSREL_SOLARIS!=	/usr/bin/uname -r | /usr/bin/sed 's/^5/2/'
.endif
.if !defined(SUNW_ISA)
SUNW_ISA!=	/usr/bin/uname -p
.endif

ECHO_MSG?=	/usr/bin/echo

TARGETS+=	all
TARGETS+=	build
TARGETS+=	checksum
TARGETS+=	clean
TARGETS+=	configure
TARGETS+=	distclean
TARGETS+=	extract
TARGETS+=	fetch
TARGETS+=	install
TARGETS+=	instpkg
TARGETS+=	package
TARGETS+=	pkgclean
TARGETS+=	release

.for __target in ${TARGETS}
.if !target(${__target})
${__target}:	_SUBDIRUSE
.endif
.endfor

_SUBDIRUSE:	.USE
.if defined(SUBDIR)
	@for entry in ${SUBDIR}; do \
	  (set -e; if test -d ${.CURDIR}/$${entry}.${MACHINE}; then \
	    _newdir_="$${entry}.${MACHINE}"; \
	  else \
	    _newdir_="$${entry}"; \
	  fi; \
	  if test X"${_THISDIR_}" = X""; then \
	    _nextdir_="$${_newdir_}"; \
	  else \
	    _nextdir_="$${_THISDIR_}/$${_newdir_}"; \
	  fi; \
	  ${ECHO_MSG} "===> $${_nextdir_}"; \
	  cd ${.CURDIR}/$${_newdir_}; \
	  ${MAKE} _THISDIR_="$${_nextdir_}" ${.TARGET}); \
	done
.endif
