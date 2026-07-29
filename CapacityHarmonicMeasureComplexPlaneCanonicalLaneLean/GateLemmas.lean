import canonicalLaneMathlib.AdmissibleClass
import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse