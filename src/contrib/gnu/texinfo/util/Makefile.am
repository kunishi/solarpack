## Makefile.am for texinfo/util.
## $Id: Makefile.am,v 1.9 1999/07/16 22:00:26 karl Exp $
## Run automake in .. to produce Makefile.in from this.

bin_PROGRAMS = install-info texindex
bin_SCRIPTS = texi2dvi

localedir = $(datadir)/locale
INCLUDES = -I$(top_srcdir)/lib -I../intl -DLOCALEDIR=\"$(localedir)\"
LDADD = ../lib/libtxi.a @INTLLIBS@

# Most of these are just for fun.  The only one that's really supported
# is texi2dvi.
EXTRA_DIST = README deref.c fix-info-dir fixfonts fixref.gawk gen-dir-node \
  outline.gawk prepinfo.awk tex3patch texi-docstring-magic.el texi2dvi
