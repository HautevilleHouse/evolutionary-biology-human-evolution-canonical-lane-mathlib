import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure EpidemiologyModelPackage where
  susceptible : Type u
  infected : Type v
  recovered : Type w
  transmissionRate : Prop
  recoveryRate : Prop
  basicReproductiveNumber : Prop

structure EpidemiologyModelEvidence (Ep : EpidemiologyModelPackage) where
  transmissionRateClosed : Ep.transmissionRate
  recoveryRateClosed : Ep.recoveryRate
  basicReproductiveNumberClosed : Ep.basicReproductiveNumber

def EpidemiologyModelClosed (Ep : EpidemiologyModelPackage) : Prop :=
  Ep.transmissionRate ∧ Ep.recoveryRate ∧ Ep.basicReproductiveNumber

theorem epidemiology_model_closed_from_evidence (Ep : EpidemiologyModelPackage) (E : EpidemiologyModelEvidence Ep) :
    EpidemiologyModelClosed Ep := by
  exact And.intro E.transmissionRateClosed (And.intro E.recoveryRateClosed E.basicReproductiveNumberClosed)

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse