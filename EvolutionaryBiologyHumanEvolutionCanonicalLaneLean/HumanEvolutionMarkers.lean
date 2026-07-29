import evolutionaryBiologyHumanEvolutionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure HumanEvolutionMarkersPackage where
  fossilEvidence : Type u
  geneticMarkers : Type v
  morphologicalTraits : Prop
  migrationPatterns : Prop

structure HumanEvolutionMarkersEvidence (H : HumanEvolutionMarkersPackage) where
  fossilEvidenceClosed : Prop
  geneticMarkersClosed : Prop
  morphologicalTraitsClosed : H.morphologicalTraits
  migrationPatternsClosed : H.migrationPatterns

def HumanEvolutionMarkersClosed (H : HumanEvolutionMarkersPackage) : Prop :=
  H.morphologicalTraits ∧ H.migrationPatterns

theorem human_evolution_markers_closed_from_evidence (H : HumanEvolutionMarkersPackage)
    (E : HumanEvolutionMarkersEvidence H) : HumanEvolutionMarkersClosed H := by
  exact And.intro E.morphologicalTraitsClosed E.migrationPatternsClosed

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse