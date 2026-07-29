import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Type u
  metabolicPathway : Type v
  signalingCascade : Type w
  networkDynamics : Prop
  feedbackLoops : Prop
  robustness : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  networkDynamicsClosed : S.networkDynamics
  feedbackLoopsClosed : S.feedbackLoops
  robustnessClosed : S.robustness

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.networkDynamics ∧ S.feedbackLoops ∧ S.robustness

theorem systems_biology_closed_from_evidence (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) : SystemsBiologyClosed S := by
  exact And.intro E.networkDynamicsClosed (And.intro E.feedbackLoopsClosed E.robustnessClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse