import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure EquilibriumStagesPackage where
  equilibriumLineSlope : Prop
  operatingLineSlope : Prop
  numberIdealStages : Prop
  vaporLiquidEquilibrium : Prop
  stageEfficiency : Prop

structure EquilibriumStagesEvidence (E : EquilibriumStagesPackage) where
  equilibriumLineSlopeClosed : E.equilibriumLineSlope
  operatingLineSlopeClosed : E.operatingLineSlope
  numberIdealStagesClosed : E.numberIdealStages
  vaporLiquidEquilibriumClosed : E.vaporLiquidEquilibrium
  stageEfficiencyClosed : E.stageEfficiency

def EquilibriumStagesClosed (E : EquilibriumStagesPackage) : Prop :=
  E.equilibriumLineSlope ∧ E.operatingLineSlope ∧
  E.numberIdealStages ∧ E.vaporLiquidEquilibrium ∧
  E.stageEfficiency

theorem equilibrium_stages_closed_from_evidence (E : EquilibriumStagesPackage)
    (Ev : EquilibriumStagesEvidence E) : EquilibriumStagesClosed E := by
  exact And.intro Ev.equilibriumLineSlopeClosed
    (And.intro Ev.operatingLineSlopeClosed
      (And.intro Ev.numberIdealStagesClosed
        (And.intro Ev.vaporLiquidEquilibriumClosed
          Ev.stageEfficiencyClosed)))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse