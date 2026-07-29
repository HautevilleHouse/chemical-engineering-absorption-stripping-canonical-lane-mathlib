import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure EquilibriumStagePackage where
  numberOfStages : ℕ
  stageEfficiency : ℝ
  equilibriumLine : ℝ → ℝ
  operatingLine : ℝ → ℝ
  mccabeThieleConstruction : Prop
  graphicalEquilibriumStageDetermined : Prop
  algebraicStageCalculation : Prop
  stageEfficiencyApplied : Prop

structure EquilibriumStageEvidence (E : EquilibriumStagePackage) where
  mccabeThieleConstructionClosed : E.mccabeThieleConstruction
  graphicalEquilibriumStageDeterminedClosed : E.graphicalEquilibriumStageDetermined
  algebraicStageCalculationClosed : E.algebraicStageCalculation
  stageEfficiencyAppliedClosed : E.stageEfficiencyApplied

def EquilibriumStageClosed (E : EquilibriumStagePackage) : Prop :=
  E.mccabeThieleConstruction ∧ E.graphicalEquilibriumStageDetermined ∧
  E.algebraicStageCalculation ∧ E.stageEfficiencyApplied

theorem equilibrium_stage_closed_from_evidence (E : EquilibriumStagePackage) (Ev : EquilibriumStageEvidence E) : EquilibriumStageClosed E :=
  by
    exact And.intro Ev.mccabeThieleConstructionClosed
      (And.intro Ev.graphicalEquilibriumStageDeterminedClosed
        (And.intro Ev.algebraicStageCalculationClosed Ev.stageEfficiencyAppliedClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse