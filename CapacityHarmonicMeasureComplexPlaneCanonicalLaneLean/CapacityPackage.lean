import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.HarmonicMeasurePackage

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CapacityPackage {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} (H : HarmonicMeasurePackage C) where
  analyticCapacityDefined : Prop
  capacityEquivHarmonicMeasure : Prop
  capacityMonotonicity : Prop
  capacityContinuity : Prop

structure CapacityEvidence {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} {H : HarmonicMeasurePackage C}
    (K : CapacityPackage H) where
  analyticCapacityDefinedClosed : K.analyticCapacityDefined
  capacityEquivHarmonicMeasureClosed : K.capacityEquivHarmonicMeasure
  capacityMonotonicityClosed : K.capacityMonotonicity
  capacityContinuityClosed : K.capacityContinuity

def CapacityClosed {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} {H : HarmonicMeasurePackage C}
    (K : CapacityPackage H) : Prop :=
  K.analyticCapacityDefined ∧ K.capacityEquivHarmonicMeasure ∧
  K.capacityMonotonicity ∧ K.capacityContinuity

theorem capacity_closed_from_evidence
    {A : ComplexAnalyticAdmittedObject} {C : CauchyIntegralPackage A}
    {H : HarmonicMeasurePackage C} (K : CapacityPackage H)
    (E : CapacityEvidence K) : CapacityClosed K := by
  exact And.intro E.analyticCapacityDefinedClosed
    (And.intro E.capacityEquivHarmonicMeasureClosed
      (And.intro E.capacityMonotonicityClosed E.capacityContinuityClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse