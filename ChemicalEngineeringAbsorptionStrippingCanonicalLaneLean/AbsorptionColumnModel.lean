import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure AbsorptionColumnPackage where
  columnDiameter : ℝ
  packingHeight : ℝ
  liquidFlowRate : ℝ
  gasFlowRate : ℝ
  inletConcentration : ℝ
  equilibriumConstant : ℝ → ℝ → ℝ
  numberOfTransferUnits : Prop
  heightOfTransferUnit : Prop
  overallMassTransferCoefficient : Prop

structure AbsorptionColumnEvidence (C : AbsorptionColumnPackage) where
  numberOfTransferUnitsClosed : C.numberOfTransferUnits
  heightOfTransferUnitClosed : C.heightOfTransferUnit
  overallMassTransferCoefficientClosed : C.overallMassTransferCoefficient

def AbsorptionColumnClosed (C : AbsorptionColumnPackage) : Prop :=
  C.numberOfTransferUnits ∧ C.heightOfTransferUnit ∧ C.overallMassTransferCoefficient

theorem absorption_column_closed_from_evidence (C : AbsorptionColumnPackage) (E : AbsorptionColumnEvidence C) : AbsorptionColumnClosed C :=
  by
    exact And.intro E.numberOfTransferUnitsClosed
      (And.intro E.heightOfTransferUnitClosed E.overallMassTransferCoefficientClosed)

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse