import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure NoncollapsingPackage where
  capacityPositive : Prop
  harmonicMeasureNonTrivial : Prop
  boundaryRegular : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  capacityPositiveClosed : N.capacityPositive
  harmonicMeasureNonTrivialClosed : N.harmonicMeasureNonTrivial
  boundaryRegularClosed : N.boundaryRegular

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.capacityPositive ∧ N.harmonicMeasureNonTrivial ∧ N.boundaryRegular

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.capacityPositiveClosed
    (And.intro E.harmonicMeasureNonTrivialClosed E.boundaryRegularClosed)

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse