import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure MassTransferPackage where
  gasPhaseResistance : Prop
  liquidPhaseResistance : Prop
  overallMassTransferCoefficient : Prop
  heightOfTransferUnit : Prop
  numberOfTransferUnits : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  gasPhaseResistanceClosed : M.gasPhaseResistance
  liquidPhaseResistanceClosed : M.liquidPhaseResistance
  overallMassTransferCoefficientClosed : M.overallMassTransferCoefficient
  heightOfTransferUnitClosed : M.heightOfTransferUnit
  numberOfTransferUnitsClosed : M.numberOfTransferUnits

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.gasPhaseResistance ∧ M.liquidPhaseResistance ∧
  M.overallMassTransferCoefficient ∧ M.heightOfTransferUnit ∧
  M.numberOfTransferUnits

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.gasPhaseResistanceClosed
    (And.intro E.liquidPhaseResistanceClosed
      (And.intro E.overallMassTransferCoefficientClosed
        (And.intro E.heightOfTransferUnitClosed
          E.numberOfTransferUnitsClosed)))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse