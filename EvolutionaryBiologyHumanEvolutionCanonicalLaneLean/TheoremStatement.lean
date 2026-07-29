import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure EvolAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  populationDynamics : Prop
  evolutionaryStable : Prop
  conclusion : populationDynamics ∧ evolutionaryStable

def EvolWitnessClosed (O : EvolAdmittedObject) : Prop :=
  O.populationDynamics ∧ O.evolutionaryStable

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse