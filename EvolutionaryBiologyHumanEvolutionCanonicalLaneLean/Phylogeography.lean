import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyHumanEvolutionCanonicalLaneLean

structure MigrationPackage where
  geneFlow : Prop
  founderEffect : Prop
  isolationByDistance : Prop
  effectivePopulationSize : Prop

structure MigrationEvidence (M : MigrationPackage) where
  geneFlowClosed : M.geneFlow
  founderEffectClosed : M.founderEffect
  isolationByDistanceClosed : M.isolationByDistance
  effectivePopulationSizeClosed : M.effectivePopulationSize

def MigrationClosed (M : MigrationPackage) : Prop :=
  M.geneFlow ∧ M.founderEffect ∧ M.isolationByDistance ∧ M.effectivePopulationSize

theorem migration_closed_from_evidence (M : MigrationPackage) (E : MigrationEvidence M) :
    MigrationClosed M := by
  exact And.intro E.geneFlowClosed
    (And.intro E.founderEffectClosed
      (And.intro E.isolationByDistanceClosed E.effectivePopulationSizeClosed))

end EvolutionaryBiologyHumanEvolutionCanonicalLaneLean
end HautevilleHouse