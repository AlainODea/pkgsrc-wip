# $NetBSD$

.include "../../lang/python/pyversion.mk"

BUILDLINK_TREE+=	pyvisionegg

.if !defined(PY_VISIONEGG_BUILDLINK3_MK)
PY_VISIONEGG_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pyvisionegg+=	${PYPKGPREFIX}-visionegg>=0.9.9
BUILDLINK_ABI_DEPENDS.pyvisionegg?=	${PYPKGPREFIX}-visionegg>=0.9.9nb2
BUILDLINK_PKGSRCDIR.pyvisionegg?=	../../wip/py-visionegg

.if exists(../../mk/opengl.buildlink3.mk)
# see PR 23845 for details
.include "../../mk/opengl.buildlink3.mk"
.else
.include "../../graphics/MesaLib/buildlink3.mk"
.endif
.include "../../devel/py-game/buildlink3.mk"
.include "../../math/py-Numeric/buildlink3.mk"
.endif # PY_VISIONEGG_BUILDLINK3_MK

BUILDLINK_TREE+=	-pyvisionegg
