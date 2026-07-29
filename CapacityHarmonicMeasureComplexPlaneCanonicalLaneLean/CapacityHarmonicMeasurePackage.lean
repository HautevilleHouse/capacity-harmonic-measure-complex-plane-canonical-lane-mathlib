import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CapacityHarmonicMeasurePackage where
  domain : Type u
  topology : TopologicalSpace domain
  harmonicMeasure : Type v
  capacity : Type w
  harmonicMeasureDefined : Prop
  capacityDefined : Prop
  relationHarmonicCapacity : Prop
  conformalInvariance : Prop

structure CapacityHarmonicMeasureEvidence (P : CapacityHarmonicMeasurePackage) where
  harmonicMeasureDefinedClosed : P.harmonicMeasureDefined
  capacityDefinedClosed : P.capacityDefined
  relationHarmonicCapacityClosed : P.relationHarmonicCapacity
  conformalInvarianceClosed : P.conformalInvariance

def CapacityHarmonicMeasureClosed (P : CapacityHarmonicMeasurePackage) : Prop :=
  P.harmonicMeasureDefined ∧ P.capacityDefined ∧ P.relationHarmonicCapacity ∧ P.conformalInvariance

theorem capacity_harmonic_measure_closed_from_evidence
    (P : CapacityHarmonicMeasurePackage) (E : CapacityHarmonicMeasureEvidence P) :
    CapacityHarmonicMeasureClosed P := by
  exact And.intro E.harmonicMeasureDefinedClosed
    (And.intro E.capacityDefinedClosed
      (And.intro E.relationHarmonicCapacityClosed E.conformalInvarianceClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse