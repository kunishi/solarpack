#	$Id: obj.mk,v 1.4 2000/04/02 06:29:59 sjg Exp $
#	$NetBSD: bsd.obj.mk,v 1.9 1996/04/10 21:08:05 thorpej Exp $

.if !target(obj)
.if defined(NOOBJ)
obj:
.else

.if defined(MAKEOBJDIRPREFIX) || defined(MAKOBJDIR)
.if defined(MAKEOBJDIRPREFIX)
__objdir:= ${MAKEOBJDIRPREFIX}${.CURDIR}
.else
__objdir:= ${MAKEOBJDIR}
.endif
obj: _SUBDIRUSE
	@if test ! -d ${__objdir}; then \
		mkdir -p ${__objdir}; \
		if test ! -d ${__objdir}; then \
			mkdir ${__objdir}; exit 1; \
		fi; \
		echo "${.CURDIR} => ${__objdir}"; \
	fi
.else
.if defined(OBJMACHINE)
__objdir=	obj.${MACHINE}
.else
__objdir=	obj
.endif

.if defined(USR_OBJMACHINE)
__usrobjdir=	${BSDOBJDIR}.${MACHINE}
__usrobjdirpf=	
.else
__usrobjdir=	${BSDOBJDIR}
.if defined(OBJMACHINE)
__usrobjdirpf=	.${MACHINE}
.else
__usrobjdirpf=
.endif
.endif

obj: _SUBDIRUSE
	@cd ${.CURDIR}; rm -f ${__objdir} > /dev/null 2>&1 || true; \
	here=`/bin/pwd`; subdir=`echo $$here | sed 's,^${BSDSRCDIR}/,,'`; \
	if test $$here != $$subdir ; then \
		dest=${__usrobjdir}/$$subdir${__usrobjdirpf} ; \
		echo "$$here/${__objdir} -> $$dest"; \
		rm -rf ${__objdir}; \
		ln -s $$dest ${__objdir}; \
		if test -d ${__usrobjdir} -a ! -d $$dest; then \
			mkdir -p $$dest; \
		else \
			true; \
		fi; \
	else \
		true ; \
		dest=$$here/${__objdir} ; \
		if test ! -d ${__objdir} ; then \
			echo "making $$dest" ; \
			mkdir $$dest; \
		fi ; \
	fi;
.endif
.endif
.endif

.if !target(whereobj)
whereobj:
	@echo ${.OBJDIR}
.endif
