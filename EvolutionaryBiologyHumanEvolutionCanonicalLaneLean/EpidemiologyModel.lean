import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure EpidemiologyPackage where
  populationCompartments : Type u
  transmissionRate : Type v
  recoveryRate : Type w
  basicReproductiveNumber : Prop
  compartmentalDynamics : Prop
  herdImmunityThreshold : Prop

structure EpidemiologyEvidence (E : EpidemiologyPackage) where
  basicReproductiveNumberClosed : E.basicReproductiveNumber
  compartmentalDynamicsClosed : E.compartmentalDynamics
  herdImmunityThresholdClosed : E.herdImmunityThreshold

def EpidemiologyClosed (E : EpidemiologyPackage) : Prop :=
  E.basicReproductiveNumber ∧ E.compartmentalDynamics ∧ E.herdImmunityThreshold

theorem epidemiology_closed_from_evidence (E : EpidemiologyPackage) (Ev : EpidemiologyEvidence E) : EpidemiologyClosed E := by
  exact And.intro Ev.basicReproductiveNumberClosed (And.intro Ev.compartmentalDynamicsClosed Ev.herdImmunityThresholdClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse