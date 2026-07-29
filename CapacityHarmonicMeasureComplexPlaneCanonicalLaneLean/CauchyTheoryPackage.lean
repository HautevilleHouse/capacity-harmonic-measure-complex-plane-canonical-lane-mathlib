import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CauchyTheoryPackage where
  domainType : Type u
  topology : TopologicalSpace domainType
  complexStructure : ComplexStructure domainType
  contour : ContourType
  cauchyIntegralTheorem : Prop
  cauchyIntegralFormula : Prop
  analyticityImplied : Prop
  residueTheorem : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralTheoremClosed : C.cauchyIntegralTheorem
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  analyticityImpliedClosed : C.analyticityImplied
  residueTheoremClosed : C.residueTheorem

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralTheorem ∧ C.cauchyIntegralFormula ∧
  C.analyticityImplied ∧ C.residueTheorem

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage)
    (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.cauchyIntegralTheoremClosed
    (And.intro E.cauchyIntegralFormulaClosed
      (And.intro E.analyticityImpliedClosed E.residueTheoremClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse
