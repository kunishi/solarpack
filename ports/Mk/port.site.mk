#
# $Id: port.site.mk,v 1.2 2001/11/30 15:21:55 kunishi Exp $
#

MASTER_SITE_GNU+=	\
	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/%SUBDIR%/ \
	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/%SUBDIR%/ \
	ftp://ftp.kddlabs.co.jp/pub/gnu/%SUBDIR%/ \
	ftp://ftp.gnu.org/gnu/%SUBDIR%/ \
	ftp://ftp.sourceforge.net/pub/mirrors/gnu/%SUBDIR%/

MASTER_SITES_GNOME+=	\
	ftp://ftp.gnome.org/pub/gnome/%SUBDIR%/

MASTER_SITE_SOURCEFORGE+=	\
	http://prdownloads.sourceforge.net/%SUBDIR%/

MASTER_SITE_FREEBSD_LOCAL+=	\
	ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/%SUBDIR%/ \
	ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/local-distfiles/%SUBDIR%/

MASTER_SITE_FREEBSD=	\
	ftp://ftp4.jp.FreeBSD.org/pub/FreeBSD/ports/distfiles/%SUBDIR%/ \
	ftp://ftp.jp.FreeBSD.org/pub/FreeBSD/ports/distfiles/%SUBDIR%/ \
	ftp://ftp.FreeBSD.org/pub/FreeBSD/ports/distfiles/%SUBDIR%/
