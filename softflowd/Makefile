# $NetBSD$

DISTNAME=		softflowd-0.9.8
CATEGORIES=		net
MASTER_SITES=		http://www.mindrot.org/files/softflowd/

MAINTAINER=		cg@cgall.de
HOMEPAGE=		http://www.mindrot.org/projects/softflowd/
COMMENT=		Flow-based network traffic analyser capable of Cisco NetFlow export

PKG_DESTDIR_SUPPORT=	none

USE_LANGUAGES=		c
GNU_CONFIGURE=		yes
BUILD_DEFS+=		VARBASE

OWN_DIRS=		${VARBASE}/chroot/softflowd

.include "../../net/libpcap/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
