import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure ComplexAnalyticAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  harmonicMeasure : Measure domain
  analyticCapacity : ℝ
  conclusion : Prop

structure AdmissibleClass where
  object : ComplexAnalyticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse