# $NetBSD$

BUILDLINK_TREE+=	hs-attempt

.if !defined(HS_ATTEMPT_BUILDLINK3_MK)
HS_ATTEMPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-attempt+=	hs-attempt>=0.4.0
BUILDLINK_PKGSRCDIR.hs-attempt?=	../../wip/hs-attempt

.include "../../wip/hs-failure/buildlink3.mk"
.endif	# HS_ATTEMPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-attempt
