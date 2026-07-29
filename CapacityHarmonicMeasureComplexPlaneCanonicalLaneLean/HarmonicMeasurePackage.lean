import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.CauchyIntegralPackage

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure HarmonicMeasurePackage {A : ComplexAnalyticAdmittedObject}
    (C : CauchyIntegralPackage A) where
  greenFunction : A.domain → ℂ → ℝ
  poissonIntegral : Prop
  harmonicFunctionReproduction : Prop
  boundaryBehavior : Prop

structure HarmonicMeasureEvidence {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} (H : HarmonicMeasurePackage C) where
  poissonIntegralClosed : H.poissonIntegral
  harmonicFunctionReproductionClosed : H.harmonicFunctionReproduction
  boundaryBehaviorClosed : H.boundaryBehavior

def HarmonicMeasureClosed {A : ComplexAnalyticAdmittedObject}
    {C : CauchyIntegralPackage A} (H : HarmonicMeasurePackage C) : Prop :=
  H.poissonIntegral ∧ H.harmonicFunctionReproduction ∧ H.boundaryBehavior

theorem harmonic_measure_closed_from_evidence
    {A : ComplexAnalyticAdmittedObject} {C : CauchyIntegralPackage A}
    (H : HarmonicMeasurePackage C) (E : HarmonicMeasureEvidence H) :
    HarmonicMeasureClosed H := by
  exact And.intro E.poissonIntegralClosed
    (And.intro E.harmonicFunctionReproductionClosed E.boundaryBehaviorClosed)

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse