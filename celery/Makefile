# $NetBSD$
#

DISTNAME=	celery-3.0.21
CATEGORIES=	net
MASTER_SITES=	http://pypi.python.org/packages/source/c/celery/
FETCH_USING=	curl

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.celeryproject.org/
COMMENT=	Asynchronous task/job queue based on distributed message passing
LICENSE=	modified-bsd # AND cc-by-nc-sa-v3.0

USE_LANGUAGES=	c

DEPENDS+=	${PYPKGPREFIX}-anyjson-[0-9]*:../../textproc/py-anyjson
DEPENDS+=	${PYPKGPREFIX}-billiard-[0-9]*:../../parallel/py-billiard
DEPENDS+=	${PYPKGPREFIX}-kombu-[0-9]*:../../net/py-kombu
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
