import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure MassTransferRateModelPackage where
  twoFilmTheory : Prop
  overallMassTransferCoefficient : Prop
  drivingForceDefinition : Prop
  transferRateEquation : Prop

structure MassTransferRateModelEvidence (M : MassTransferRateModelPackage) where
  twoFilmTheoryClosed : M.twoFilmTheory
  overallMassTransferCoefficientClosed : M.overallMassTransferCoefficient
  drivingForceDefinitionClosed : M.drivingForceDefinition
  transferRateEquationClosed : M.transferRateEquation

def MassTransferRateModelClosed (M : MassTransferRateModelPackage) : Prop :=
  M.twoFilmTheory ∧ M.overallMassTransferCoefficient ∧ M.drivingForceDefinition ∧ M.transferRateEquation

theorem mass_transfer_rate_model_closed_from_evidence (M : MassTransferRateModelPackage) (E : MassTransferRateModelEvidence M) :
    MassTransferRateModelClosed M := by
  exact And.intro E.twoFilmTheoryClosed
    (And.intro E.overallMassTransferCoefficientClosed
      (And.intro E.drivingForceDefinitionClosed E.transferRateEquationClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse