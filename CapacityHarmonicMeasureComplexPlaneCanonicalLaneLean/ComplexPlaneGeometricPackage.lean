import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure ComplexPlaneGeometricPackage where
  plane : Type u
  topology : TopologicalSpace plane
  complexStructure : Prop
  disk : Prop
  simplyConnected : Prop
  greenFunction : Type v
  poissonKernel : Type w
  diskModelDefined : Prop
  greenFunctionDefined : Prop
  poissonKernelDefined : Prop
  riemannMappingAvailable : Prop

structure ComplexPlaneGeometricEvidence (G : ComplexPlaneGeometricPackage) where
  diskModelDefinedClosed : G.diskModelDefined
  greenFunctionDefinedClosed : G.greenFunctionDefined
  poissonKernelDefinedClosed : G.poissonKernelDefined
  riemannMappingAvailableClosed : G.riemannMappingAvailable

def ComplexPlaneGeometricClosed (G : ComplexPlaneGeometricPackage) : Prop :=
  G.diskModelDefined ∧ G.greenFunctionDefined ∧ G.poissonKernelDefined ∧ G.riemannMappingAvailable

theorem complex_plane_geometric_closed_from_evidence
    (G : ComplexPlaneGeometricPackage) (E : ComplexPlaneGeometricEvidence G) :
    ComplexPlaneGeometricClosed G := by
  exact And.intro E.diskModelDefinedClosed
    (And.intro E.greenFunctionDefinedClosed
      (And.intro E.poissonKernelDefinedClosed E.riemannMappingAvailableClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse