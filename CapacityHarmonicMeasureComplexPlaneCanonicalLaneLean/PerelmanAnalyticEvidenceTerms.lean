import CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms (C : CurvatureAnalyticCertificate) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : RiemannianCurvatureClosed C

def CurvatureAnalyticCertificate.evidenceTerms (C : CurvatureAnalyticCertificate) : CurvatureAnalyticEvidenceTerms C := {
  riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
  bianchiIdentities := C.bianchiIdentitiesClosed
  ricciContractionLaw := C.ricciContractionLawClosed
  scalarTraceLaw := C.scalarTraceLawClosed
  curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
  curvatureClosed := riemannian_curvature_closed_from_evidence C C.curvatureEvidence
}

structure HamiltonDeTurckEvidenceTerms (H : HamiltonDeTurckCertificate) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversRicciFlow : H.pullbackRecoversRicciFlow
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : RicciFlowPDEClosed H

def HamiltonDeTurckCertificate.evidenceTerms (H : HamiltonDeTurckCertificate) : HamiltonDeTurckEvidenceTerms H := {
  gaugeChoice := H.gaugeChoiceClosed
  stronglyParabolicReduction := H.stronglyParabolicReductionClosed
  deTurckVectorField := H.deTurckVectorFieldClosed
  pullbackRecoversRicciFlow := H.pullbackRecoversRicciFlowClosed
  uniquenessCompatibility := H.uniquenessCompatibilityClosed
  flowClosed := ricci_flow_pde_closed_from_evidence H H.flowEvidence
}

structure ShortTimeEvidenceTerms (S : ShortTimeAnalyticCertificate) where
  parabolicRegularity : S.parabolicRegularity
  localExistenceInterval : S.localExistenceInterval
  uniquenessOnOverlap : S.uniquenessOnOverlap
  continuationCriterion : S.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed S

def ShortTimeAnalyticCertificate.evidenceTerms (S : ShortTimeAnalyticCertificate) : ShortTimeEvidenceTerms S := {
  parabolicRegularity := S.parabolicRegularityClosed
  localExistenceInterval := S.localExistenceIntervalClosed
  uniquenessOnOverlap := S.uniquenessOnOverlapClosed
  continuationCriterion := S.continuationCriterionClosed
  shortTimeClosed := short_time_existence_closed_from_evidence S S.shortTimeEvidence
}

structure EntropyEvidenceTerms (E : EntropyAnalyticCertificate) where
  conjugateHeatEquation : E.conjugateHeatEquation
  wFunctionalDefined : E.wFunctionalDefined
  muFunctionalDefined : E.muFunctionalDefined
  entropyMonotonicityFormula : E.entropyMonotonicityFormula
  reducedVolumeMonotonicity : E.reducedVolumeMonotonicity
  entropyClosed : PerelmanEntropyClosed E

def EntropyAnalyticCertificate.evidenceTerms (E : EntropyAnalyticCertificate) : EntropyEvidenceTerms E := {
  conjugateHeatEquation := E.conjugateHeatEquationClosed
  wFunctionalDefined := E.wFunctionalDefinedClosed
  muFunctionalDefined := E.muFunctionalDefinedClosed
  entropyMonotonicityFormula := E.entropyMonotonicityFormulaClosed
  reducedVolumeMonotonicity := E.reducedVolumeMonotonicityClosed
  entropyClosed := perelman_entropy_closed_from_evidence E E.entropyEvidence
}

structure NoncollapsingEvidenceTerms (N : NoncollapsingAnalyticCertificate) where
  noLocalCollapsing : N.noLocalCollapsing
  scaleInvariantVolumeLowerBound : N.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : N.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : N.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed N

def NoncollapsingAnalyticCertificate.evidenceTerms (N : NoncollapsingAnalyticCertificate) : NoncollapsingEvidenceTerms N := {
  noLocalCollapsing := N.noLocalCollapsingClosed
  scaleInvariantVolumeLowerBound := N.scaleInvariantVolumeLowerBoundClosed
  curvatureScaleCompatibility := N.curvatureScaleCompatibilityClosed
  ancientSolutionCompactnessInput := N.ancientSolutionCompactnessInputClosed
  noncollapsingClosed := noncollapsing_closed_from_evidence N N.noncollapsingEvidence
}

structure SingularityEvidenceTerms (Q : SingularityAnalyticCertificate) where
  blowupSequenceChosen : Q.blowupSequenceChosen
  pointedLimitExists : Q.pointedLimitExists
  ancientKappaSolution : Q.ancientKappaSolution
  asymptoticShrinkersControlled : Q.asymptoticShrinkersControlled
  singularityModelsClosed : SingularityModelsClosed Q

def SingularityAnalyticCertificate.evidenceTerms (Q : SingularityAnalyticCertificate) : SingularityEvidenceTerms Q := {
  blowupSequenceChosen := Q.blowupSequenceChosenClosed
  pointedLimitExists := Q.pointedLimitExistsClosed
  ancientKappaSolution := Q.ancientKappaSolutionClosed
  asymptoticShrinkersControlled := Q.asymptoticShrinkersControlledClosed
  singularityModelsClosed := singularity_models_closed_from_evidence Q Q.singularityEvidence
}

structure CanonicalNeighborhoodEvidenceTerms (C : CanonicalNeighborhoodAnalyticCertificate) where
  highCurvaturePointClassified : C.highCurvaturePointClassified
  neckCapOrRoundComponent : C.neckCapOrRoundComponent
  surgeryScaleAdmissible : C.surgeryScaleAdmissible
  persistenceUnderFlow : C.persistenceUnderFlow
  canonicalNeighborhoodsClosed : CanonicalNeighborhoodsClosed C

def CanonicalNeighborhoodAnalyticCertificate.evidenceTerms (C : CanonicalNeighborhoodAnalyticCertificate) : CanonicalNeighborhoodEvidenceTerms C := {
  highCurvaturePointClassified := C.highCurvaturePointClassifiedClosed
  neckCapOrRoundComponent := C.neckCapOrRoundComponentClosed
  surgeryScaleAdmissible := C.surgeryScaleAdmissibleClosed
  persistenceUnderFlow := C.persistenceUnderFlowClosed
  canonicalNeighborhoodsClosed := canonical_neighborhoods_closed_from_evidence C C.canonicalNeighborhoodEvidence
}

end CapacityHarmonicMeasureComplexPlaneCanonicalLaneLean
end HautevilleHouse