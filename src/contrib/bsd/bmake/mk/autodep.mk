#
# RCSid:
#	$Id: autodep.mk,v 1.15 2000/05/20 06:54:05 sjg Exp $

# This module provides automagic dependency generation along the
# lines suggested in the GNU make.info
# The depend target is mainly for backwards compatability,
# dependencies are normally updated as part of compilation.

# set MKDEP=autodep and dep.mk will include us
.if !defined(_autodep_inc)
MKDEP=autodep
MKDEPCMD=autodep
_autodep_inc=1
# it does nothing if SRCS is not defined or is empty
.if defined(SRCS) && !empty(SRCS)
DEPSRCS?=${SRCS}
__depsrcs=${DEPSRCS:M*.c}
__depsrcs+=${DEPSRCS:M*.y}
__depsrcs+=${DEPSRCS:M*.l}
__depsrcs+=${DEPSRCS:M*.s}
__depsrcs+=${DEPSRCS:M*.S}
__depsrcs+=${DEPSRCS:M*.cc}
__depsrcs+=${DEPSRCS:M*.cpp}
__depsrcs+=${DEPSRCS:M*.C}
__depsrcs+=${DEPSRCS:M*.cxx}
__depsrcs+=${DEPSRCS:M*.pc}

__depsrcs:=${__depsrcs:R:S/$/.d/g}

# set this to -MMD to ignore /usr/include
# actually it ignores <> so may not be a great idea
CFLAGS_MD?=-MD
CFLAGS+= ${CFLAGS_MD}

# watch out for people who don't use CPPFLAGS
CPPFLAGS_MD=${CFLAGS:M-[IUD]*} ${CPPFLAGS} 
CXXFLAGS_MD=${CXXFLAGS:M-[IUD]*} ${CPPFLAGS} 

# just in case these need to be different
CC_MD?=${CC}
CXX_MD?=${CXX}

# so we can do an explicit make depend
.SUFFIXES:	.d

.if empty(CFLAGS_MD)
.c.d .s.d .S.d:
	@echo updating dependencies for $<
	@${SHELL} -ec "${CC_MD} -M ${CPPFLAGS_MD} $< | sed '/:/s/^/$@ /' > $@" || rm -f $@

.cc.d .cpp.d .C.d .cxx.d:
	@echo updating dependencies for $<
	@${SHELL} -ec "${CXX_MD} -M ${CXXFLAGS_MD} $< | sed '/:/s/^/$@ /' > $@" || rm -f $@
.else
.c.d .s.d .S.d:
	${CC_MD} ${CFLAGS_MD:S/D//} ${CPPFLAGS_MD} $< > $@ || rm -f $@

.cc.d .cpp.d .C.d .cxx.d:
	${CXX_MD} ${CFLAGS_MD:S/D//} ${CXXFLAGS_MD} $< > $@ || rm -f $@
.endif

.if !target(depend)
depend: beforedepend .depend afterdepend _SUBDIR

.depend:	${__depsrcs}
.NOPATH:	${__depsrcs}

.if empty(CFLAGS_MD)
# make sure the .d's are generated/updated
${PROG} ${_LIBS}:	.depend
.endif
.endif

.if !target(beforedepend)
beforedepend:
.endif
.if !target(afterdepend)
afterdepend:
.endif

.ORDER:	beforedepend .depend afterdepend

cleandir: cleandepend
cleandepend:
	rm -f ${__depsrcs} .depend

CLEANFILES+= ${__depsrcs} .depend

.if !(make(clean*) || make(obj) || make(*install) || make(install-*))
# this ensures we do the right thing if only building a shared or
# profiled lib
MDLIB_SED= -e '/:/s,^\([^\.:]*\)\.o,& \1.po \1.so,'
.ifdef NOMD_SED
.ifdef LIB
MD_SED=sed ${MDLIB_SED}
.else
MD_SED=cat
.endif
.else
# arrange to put some variable names into .depend
.ifdef LIB
MD_SED=sed ${MDLIB_SED}
.else
MD_SED=sed
.endif
SUBST_DEPVARS+= TOP BACKING SRC SRCDIR BASE BASEDIR
.for v in ${SUBST_DEPVARS}
.if defined(${v}) && !empty(${v})
MD_SED+= -e 's,${$v},$${$v},'
.endif
.endfor
.endif
.if (${MD_SED} == "sed")
MD_SED=cat
.endif

# this will be done whenever make finishes successfully
.if defined(__depsrcs) && !empty(__depsrcs)
.END:
	-@${MD_SED} ${__depsrcs} > .depend.new 2>/dev/null && test -s .depend.new && \
	{ cmp -s .depend .depend.new || mv .depend.new .depend; }; \
	rm -f .depend.new
.endif
.endif
.else
depend: beforedepend afterdepend _SUBDIR
.endif
.endif
