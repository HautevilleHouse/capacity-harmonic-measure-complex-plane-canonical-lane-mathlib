import Mathlib.Analysis.Complex.Basic
import Mathlib.MeasureTheory.Measure.Haar
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure ComplexDomain where
  carrier : Set ℂ
  openSet : IsOpen carrier
  bounded : Bounded carrier

structure HarmonicMeasureSpace (D : ComplexDomain) where
  measure : MeasureTheory.Measure (Subtype D.carrier)
  harmonicDensity : Prop
  boundaryRegular : Prop

structure CapacityObject (D : ComplexDomain) where
  harmonicMeasure : HarmonicMeasureSpace D
  analyticCapacity : ℝ
  capacityPositive : analyticCapacity > 0
  capacityFinite : analyticCapacity < ∞

structure CapacityHarmonicMeasureAdmittedObject where
  domain : ComplexDomain
  capacity : CapacityObject domain
  conclusion : capacity.capacityPositive ∧ capacity.capacityFinite

def CapacityHarmonicWitnessClosed (O : CapacityHarmonicMeasureAdmittedObject) : Prop :=
  O.capacity.capacityPositive ∧ O.capacity.capacityFinite

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse