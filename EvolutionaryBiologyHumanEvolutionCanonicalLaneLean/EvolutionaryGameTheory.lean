import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySet : Type u
  payoffMatrix : Type v
  replicatorDynamics : Prop
  evolutionarilyStableStrategy : Prop
  nashEquilibrium : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  evolutionarilyStableStrategyClosed : G.evolutionarilyStableStrategy
  nashEquilibriumClosed : G.nashEquilibrium

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.replicatorDynamics ∧ G.evolutionarilyStableStrategy ∧ G.nashEquilibrium

theorem evolutionary_game_theory_closed_from_evidence (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) : EvolutionaryGameTheoryClosed G := by
  exact And.intro E.replicatorDynamicsClosed (And.intro E.evolutionarilyStableStrategyClosed E.nashEquilibriumClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse