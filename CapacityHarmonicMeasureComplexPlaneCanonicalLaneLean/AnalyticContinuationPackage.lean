import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure AnalyticContinuationPackage where
  domainType : Type u
  topology : TopologicalSpace domainType
  complexStructure : ComplexStructure domainType
  analyticContinuationTheorem : Prop
  monodromyTheorem : Prop
  identityTheorem : Prop
  maximumModulusPrinciple : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  analyticContinuationTheoremClosed : A.analyticContinuationTheorem
  monodromyTheoremClosed : A.monodromyTheorem
  identityTheoremClosed : A.identityTheorem
  maximumModulusPrincipleClosed : A.maximumModulusPrinciple

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.analyticContinuationTheorem ∧ A.monodromyTheorem ∧
  A.identityTheorem ∧ A.maximumModulusPrinciple

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
    (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A := by
  exact And.intro E.analyticContinuationTheoremClosed
    (And.intro E.monodromyTheoremClosed
      (And.intro E.identityTheoremClosed E.maximumModulusPrincipleClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse
