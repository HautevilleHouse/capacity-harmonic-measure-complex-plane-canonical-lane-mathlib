import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.SpecialFunctions.Pow
import canonicalLaneMathlib.AdmissibleClass
import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.CapacityHarmonicMeasure

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CapacityInequalityPackage where
  domainCapacityBound : Prop
  subadditivity : Prop
  monotonicity : Prop
  conformalInvariance : Prop

def capacityInequalityPackageDefault : CapacityInequalityPackage := {
  domainCapacityBound := true
  subadditivity := true
  monotonicity := true
  conformalInvariance := true
}

structure CapacityInequalityEvidence (C : CapacityInequalityPackage) where
  domainCapacityBoundClosed : C.domainCapacityBound
  subadditivityClosed : C.subadditivity
  monotonicityClosed : C.monotonicity
  conformalInvarianceClosed : C.conformalInvariance

def CapacityInequalityClosed (C : CapacityInequalityPackage) : Prop :=
  C.domainCapacityBound ∧ C.subadditivity ∧ C.monotonicity ∧ C.conformalInvariance

theorem capacity_inequality_closed_from_evidence
    (C : CapacityInequalityPackage) (E : CapacityInequalityEvidence C) :
    CapacityInequalityClosed C := by
  exact And.intro E.domainCapacityBoundClosed
    (And.intro E.subadditivityClosed
      (And.intro E.monotonicityClosed E.conformalInvarianceClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse