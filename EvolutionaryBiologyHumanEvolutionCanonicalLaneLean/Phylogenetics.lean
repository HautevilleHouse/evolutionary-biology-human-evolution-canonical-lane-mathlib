import evolutionaryBiologyHumanEvolutionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure PhylogeneticsPackage where
  molecularClock : Prop
  coalescentModel : Prop
  phylogeneticTree : Type u
  divergenceTimes : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  coalescentModelClosed : P.coalescentModel
  divergenceTimesClosed : P.divergenceTimes

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.coalescentModel ∧ P.divergenceTimes

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.coalescentModelClosed E.divergenceTimesClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse