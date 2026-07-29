import canonicalLaneMathlib.AdmissibleClass
import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.CapacityHarmonicMeasurePackage
import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.ComplexPlaneGeometricPackage

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

def ConstrainedCapacityHarmonicMeasureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_capacity_harmonic_measure_endgame (A : AdmissibleClass) :
    ConstrainedCapacityHarmonicMeasureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse