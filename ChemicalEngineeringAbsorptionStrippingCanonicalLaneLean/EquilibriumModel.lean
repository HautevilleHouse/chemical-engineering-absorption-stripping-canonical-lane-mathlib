import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.ChemicalEngineeringObjects

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure EquilibriumModelPackage where
  vaporLiquidEquilibrium : Prop
  henryLawApplicable : Prop
  activityCoefficientModel : Prop
  phaseDistributionCoefficient : Prop

structure EquilibriumModelEvidence (E : EquilibriumModelPackage) where
  vaporLiquidEquilibriumClosed : E.vaporLiquidEquilibrium
  henryLawApplicableClosed : E.henryLawApplicable
  activityCoefficientModelClosed : E.activityCoefficientModel
  phaseDistributionCoefficientClosed : E.phaseDistributionCoefficient

def EquilibriumModelClosed (E : EquilibriumModelPackage) : Prop :=
  E.vaporLiquidEquilibrium ∧ E.henryLawApplicable ∧ E.activityCoefficientModel ∧ E.phaseDistributionCoefficient

theorem equilibrium_model_closed_from_evidence (E : EquilibriumModelPackage) (Ev : EquilibriumModelEvidence E) :
    EquilibriumModelClosed E := by
  exact And.intro Ev.vaporLiquidEquilibriumClosed
    (And.intro Ev.henryLawApplicableClosed
      (And.intro Ev.activityCoefficientModelClosed Ev.phaseDistributionCoefficientClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse