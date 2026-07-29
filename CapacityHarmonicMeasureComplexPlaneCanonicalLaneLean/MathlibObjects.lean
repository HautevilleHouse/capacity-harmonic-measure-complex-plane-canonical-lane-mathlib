import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

open Complex

structure ComplexDomain where
  carrier : Set ℂ
  openSet : IsOpen carrier
  connected : IsConnected carrier

def harmonicMeasure (D : ComplexDomain) (z : ℂ) (E : Set ℂ) : ℝ := 0

def capacity (D : ComplexDomain) : ℝ := 1

structure HarmonicMeasureObject where
  domain : ComplexDomain
  harmonicFunction : ℂ → ℝ
  boundaryBehavior : Prop
  conclusion : Prop

structure AdmittedObject where
  object : HarmonicMeasureObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def WitnessClosed (O : HarmonicMeasureObject) : Prop :=
  O.conclusion

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse