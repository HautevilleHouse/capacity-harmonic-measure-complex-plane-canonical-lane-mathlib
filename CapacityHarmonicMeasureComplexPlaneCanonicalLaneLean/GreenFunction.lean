import Mathlib.Analysis.Complex.Basic
import Mathlib.MeasureTheory.Integral
import canonicalLaneMathlib.AdmissibleClass
import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.CapacityHarmonicMeasure

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure GreenFunctionPackage (D : ComplexDomain) where
  kernel : ℂ → ℂ → ℂ
  positivity : ∀ z w ∈ D.carrier, z ≠ w → kernel z w > 0
  symmetry : ∀ z w, kernel z w = kernel w z
  laplacianProperty : ∀ z ∈ D.carrier, (fun w => kernel z w) is Harmonic on D.carrier \ {z}
  boundaryValue : ∀ z ∈ D.carrier, (fun w => kernel z w) tends to 0 at the boundary

structure GreenFunctionEvidence {D : ComplexDomain} (G : GreenFunctionPackage D) where
  positivityClosed : G.positivity
  symmetryClosed : G.symmetry
  laplacianPropertyClosed : G.laplacianProperty
  boundaryValueClosed : G.boundaryValue

def GreenFunctionClosed {D : ComplexDomain} (G : GreenFunctionPackage D) : Prop :=
  G.positivity ∧ G.symmetry ∧ G.laplacianProperty ∧ G.boundaryValue

theorem green_function_closed_from_evidence {D : ComplexDomain}
    (G : GreenFunctionPackage D) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.positivityClosed
    (And.intro E.symmetryClosed
      (And.intro E.laplacianPropertyClosed E.boundaryValueClosed))

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse