# $NetBSD$
#

DISTNAME=	oww-0.82.2
PKGREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=oww/}

MAINTAINER=	pettai@nordu.net
HOMEPAGE=	http://oww.sourceforge.net/
COMMENT=	One-wire weather

PKG_DESTDIR_SUPPORT=	none

GNU_CONFIGURE=	yes
#USE_LIBTOOL=	yes
USE_TOOLS+=	aclocal autoconf gmake perl

CONFIGURE_ARGS+=	--disable-gui
CONFIGURE_ARGS+=	--disable-nls

pre-configure:
	cd ${WRKSRC} && autoconf

do-build:
	cd ${WRKSRC}/src && gmake

do-install:
	cd ${WRKSRC}/src && gmake install

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/libusb/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
