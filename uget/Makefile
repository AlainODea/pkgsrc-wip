# $NetBSD: Makefile,v 1.18 2012/09/15 10:06:07 obache Exp $
#

DISTNAME=	uget-1.10.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=urlget/}

MAINTAINER=	ccatrian@eml.cc
HOMEPAGE=	http://uget.visuex.com/
COMMENT=	Open Source download manager application developed with GTK+
LICENSE=	gnu-lgpl-v2.1

USE_PKGLOCALEDIR=	yes

USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes
USE_TOOLS+=	bash intltool msgfmt msgmerge perl pkg-config xgettext
CONFIG_SHELL=	${BASH}

.include "options.mk"

# XXX verifypc: appindicator3-0.1 not found
BUILDLINK_DEPMETHOD.glib2=	build
.include "../../devel/glib2/buildlink3.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
