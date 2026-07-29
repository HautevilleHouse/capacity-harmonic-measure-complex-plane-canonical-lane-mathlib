import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure ComplexPlaneEndpointPackage where
  targetDomain : Type u
  targetTopology : TopologicalSpace targetDomain
  complexStructure : ComplexStructure targetDomain
  endpointCondition : Prop
  simplyConnectedEndpoint : Prop
  capacityZeroEndpoint : Prop
  harmonicMeasureTrivial : Prop

structure ComplexPlaneEndpointEvidence (E : ComplexPlaneEndpointPackage) where
  endpointConditionClosed : E.endpointCondition
  simplyConnectedEndpointClosed : E.simplyConnectedEndpoint
  capacityZeroEndpointClosed : E.capacityZeroEndpoint
  harmonicMeasureTrivialClosed : E.harmonicMeasureTrivial

def ComplexPlaneEndpointClosed (E : ComplexPlaneEndpointPackage) : Prop :=
  E.endpointCondition ∧ E.simplyConnectedEndpoint ∧
  E.capacityZeroEndpoint ∧ E.harmonicMeasureTrivial

theorem complex_plane_endpoint_closed_from_evidence (E : ComplexPlaneEndpointPackage)
    (Ev : ComplexPlaneEndpointEvidence E) : ComplexPlaneEndpointClosed E := by
  exact And.intro Ev.endpointConditionClosed
    (And.intro Ev.simplyConnectedEndpointClosed
      (And.intro Ev.capacityZeroEndpointClosed Ev.harmonicMeasureTrivialClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse
