#
# $Id: port.pre.mk,v 1.1 2000/09/27 02:11:02 kunishi Exp $
#

.if !defined(ARCH)
ARCH!=		/usr/bin/mach
.endif
.if !defined(OSREL)
OSREL!=		/usr/bin/uname -r
.endif
.if !defined(OSREL_SOLARIS)
OSREL_SOLARIS!=	/usr/bin/uname -r | /usr/bin/sed 's/^5/2/'
.endif
.if !defined(SUNW_ISA)
SUNW_ISA!=	/usr/bin/uname -p
.endif
