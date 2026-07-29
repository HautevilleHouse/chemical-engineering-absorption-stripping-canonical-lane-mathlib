import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringAbsorptionStripping.AbsorptionStrippingPackage

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStripping

structure StageEfficiencyModel {A : AbsorptionStrippingPackage} where
  murphreeVapourEfficiency : ℝ
  murphreeLiquidEfficiency : ℝ
  overallEfficiency : ℝ
  murphreeVapourDefined : Prop
  murphreeLiquidDefined : Prop
  overallDefined : Prop
  correlationApplied : Prop

structure StageEfficiencyEvidence {A : AbsorptionStrippingPackage}
    (M : StageEfficiencyModel A) where
  murphreeVapourDefinedClosed : M.murphreeVapourDefined
  murphreeLiquidDefinedClosed : M.murphreeLiquidDefined
  overallDefinedClosed : M.overallDefined
  correlationAppliedClosed : M.correlationApplied

def StageEfficiencyModelClosed {A : AbsorptionStrippingPackage}
    (M : StageEfficiencyModel A) : Prop :=
  M.murphreeVapourDefined ∧ M.murphreeLiquidDefined ∧ M.overallDefined ∧ M.correlationApplied

theorem stage_efficiency_model_closed_from_evidence {A : AbsorptionStrippingPackage}
    (M : StageEfficiencyModel A) (E : StageEfficiencyEvidence M) :
    StageEfficiencyModelClosed M := by
  exact And.intro E.murphreeVapourDefinedClosed
    (And.intro E.murphreeLiquidDefinedClosed
      (And.intro E.overallDefinedClosed E.correlationAppliedClosed))

end ChemicalEngineeringAbsorptionStripping
end HautevilleHouse