import Mathlib.Topology.Instances.Complex
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure ComplexPlaneTopologyPackage where
  topology : TopologicalSpace ℂ
  metricSpace : MetricSpace ℂ
  secondCountable : SecondCountableTopology ℂ
  locallyCompact : LocallyCompactSpace ℂ
  connected : ConnectedSpace ℂ

structure ComplexPlaneTopologyEvidence (P : ComplexPlaneTopologyPackage) where
  topologyClosed : P.topology = by infer_instance
  metricSpaceClosed : P.metricSpace = by infer_instance
  secondCountableClosed : P.secondCountable = by infer_instance
  locallyCompactClosed : P.locallyCompact = by infer_instance
  connectedClosed : P.connected = by infer_instance

def ComplexPlaneTopologyClosed (P : ComplexPlaneTopologyPackage) : Prop :=
  P.topology = by infer_instance ∧
  P.metricSpace = by infer_instance ∧
  P.secondCountable = by infer_instance ∧
  P.locallyCompact = by infer_instance ∧
  P.connected = by infer_instance

theorem complex_plane_topology_closed_from_evidence
    (P : ComplexPlaneTopologyPackage) (E : ComplexPlaneTopologyEvidence P) :
    ComplexPlaneTopologyClosed P := by
  exact And.intro E.topologyClosed
    (And.intro E.metricSpaceClosed
      (And.intro E.secondCountableClosed
        (And.intro E.locallyCompactClosed E.connectedClosed)))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse