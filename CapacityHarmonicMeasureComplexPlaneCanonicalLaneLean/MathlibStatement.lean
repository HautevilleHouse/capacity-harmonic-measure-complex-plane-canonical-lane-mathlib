import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "capacity-harmonic-measure",
  theoremObject := "Harmonic Measure and Capacity",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Full classical closure remains outside the admitted class."
}

def commonCoreProjectionLawAvailable : Prop :=
  forall {X : Type} [Add X] [Sub X] (L : AdditiveLane X),
    L.xNext = L.state + L.projection.toFun L.delta

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse