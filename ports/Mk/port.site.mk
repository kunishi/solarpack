#
# $Id: port.site.mk,v 1.3 2002/12/26 05:26:16 kunishi Exp $
#

MASTER_SITE_GNU+=	\
	ftp://ftp.dnsbalance.ring.gr.jp/pub/GNU/%SUBDIR%/ \
	ftp://ftp.media.kyoto-u.ac.jp/pub/GNU/%SUBDIR%/ \
	ftp://ftp.kddlabs.co.jp/pub/gnu/%SUBDIR%/ \
	ftp://ftp.gnu.org/pub/gnu/%SUBDIR%/ \
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

MASTER_SITE_CTAN+=	\
	ftp://ftp.u-aizu.ac.jp/pub/tex/CTAN/%SUBDIR%/ \
	ftp://ftp.iij.ad.jp/pub/TeX/CTAN/%SUBDIR%/ \
	ftp://ftp.tex.ac.uk/tex-archive/%SUBDIR%/
