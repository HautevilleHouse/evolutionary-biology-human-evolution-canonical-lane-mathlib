import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure SelectionSignaturePackage where
  dNdS : Prop
  codonBias : Prop
  selectiveSweep : Prop
  populationDifferentiation : Prop

structure SelectionSignatureEvidence (S : SelectionSignaturePackage) where
  dNdSClosed : S.dNdS
  codonBiasClosed : S.codonBias
  selectiveSweepClosed : S.selectiveSweep
  populationDifferentiationClosed : S.populationDifferentiation

def SelectionSignatureClosed (S : SelectionSignaturePackage) : Prop :=
  S.dNdS ∧ S.codonBias ∧ S.selectiveSweep ∧ S.populationDifferentiation

theorem selection_signature_closed_from_evidence (S : SelectionSignaturePackage)
    (E : SelectionSignatureEvidence S) : SelectionSignatureClosed S := by
  exact And.intro E.dNdSClosed
    (And.intro E.codonBiasClosed
      (And.intro E.selectiveSweepClosed E.populationDifferentiationClosed))

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse