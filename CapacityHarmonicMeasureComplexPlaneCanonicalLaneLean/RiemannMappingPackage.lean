import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.CapacityPackage

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure RiemannMappingPackage {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} {H : HarmonicMeasurePackage C}
    (K : CapacityPackage H) where
  simplyConnectedCondition : Prop
  riemannMapExists : Prop
  conformalEquivalence : Prop
  boundaryMapping : Prop

structure RiemannMappingEvidence {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} {H : HarmonicMeasurePackage C}
    {K : CapacityPackage H} (R : RiemannMappingPackage K) where
  simplyConnectedConditionClosed : R.simplyConnectedCondition
  riemannMapExistsClosed : R.riemannMapExists
  conformalEquivalenceClosed : R.conformalEquivalence
  boundaryMappingClosed : R.boundaryMapping

def RiemannMappingClosed {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} {H : HarmonicMeasurePackage C}
    {K : CapacityPackage H} (R : RiemannMappingPackage K) : Prop :=
  R.simplyConnectedCondition ∧ R.riemannMapExists ∧
  R.conformalEquivalence ∧ R.boundaryMapping

theorem riemann_mapping_closed_from_evidence
    {A : ComplexAnalyticAdmittedObject} {C : CauchyIntegralPackage A}
    {H : HarmonicMeasurePackage C} {K : CapacityPackage H}
    (R : RiemannMappingPackage K) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedConditionClosed
    (And.intro E.riemannMapExistsClosed
      (And.intro E.conformalEquivalenceClosed E.boundaryMappingClosed))

theorem riemann_mapping_supplies_conformal_equivalence
    {A : ComplexAnalyticAdmittedObject} {C : CauchyIntegralPackage A}
    {H : HarmonicMeasurePackage C} {K : CapacityPackage H}
    (R : RiemannMappingPackage K) : R.conformalEquivalence :=
  R.conformalEquivalence

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse