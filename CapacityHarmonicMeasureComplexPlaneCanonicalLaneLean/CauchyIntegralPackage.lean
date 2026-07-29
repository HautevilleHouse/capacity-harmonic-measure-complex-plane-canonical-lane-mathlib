import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.ComplexPlaneAdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CauchyIntegralPackage (A : ComplexAnalyticAdmittedObject) where
  analyticCurve : A.domain → ℂ
  integralFormula : Prop
  cauchyIntegralTheorem : Prop
  residueTheorem : Prop

structure CauchyIntegralEvidence {A : ComplexAnalyticAdmittedObject} (C : CauchyIntegralPackage A) where
  cauchyIntegralTheoremClosed : C.cauchyIntegralTheorem
  residueTheoremClosed : C.residueTheorem

def CauchyIntegralClosed {A : ComplexAnalyticAdmittedObject} (C : CauchyIntegralPackage A) : Prop :=
  C.cauchyIntegralTheorem ∧ C.residueTheorem

theorem cauchy_integral_closed_from_evidence
    {A : ComplexAnalyticAdmittedObject} (C : CauchyIntegralPackage A)
    (E : CauchyIntegralEvidence C) : CauchyIntegralClosed C := by
  exact And.intro E.cauchyIntegralTheoremClosed E.residueTheoremClosed

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse