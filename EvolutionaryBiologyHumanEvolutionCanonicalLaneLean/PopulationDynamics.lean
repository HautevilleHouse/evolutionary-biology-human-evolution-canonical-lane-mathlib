import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure PopulationDynamicsPackage where
  populationSize : Type u
  birthRate : Type v
  deathRate : Type w
  carryingCapacity : Prop
  logisticGrowthEquation : Prop
  equilibriumPoints : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  carryingCapacityClosed : P.carryingCapacity
  logisticGrowthEquationClosed : P.logisticGrowthEquation
  equilibriumPointsClosed : P.equilibriumPoints

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.carryingCapacity ∧ P.logisticGrowthEquation ∧ P.equilibriumPoints

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage) (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.carryingCapacityClosed (And.intro E.logisticGrowthEquationClosed E.equilibriumPointsClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse