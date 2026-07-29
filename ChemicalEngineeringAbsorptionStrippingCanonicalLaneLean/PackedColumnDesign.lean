import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure PackedColumnDesignPackage where
  packingTypeSelected : Prop
  columnDiameterCalculated : Prop
  pressureDropPredicted : Prop
  liquidHoldup : Prop
  massTransferArea : Prop

structure PackedColumnDesignEvidence (P : PackedColumnDesignPackage) where
  packingTypeSelectedClosed : P.packingTypeSelected
  columnDiameterCalculatedClosed : P.columnDiameterCalculated
  pressureDropPredictedClosed : P.pressureDropPredicted
  liquidHoldupClosed : P.liquidHoldup
  massTransferAreaClosed : P.massTransferArea

def PackedColumnDesignClosed (P : PackedColumnDesignPackage) : Prop :=
  P.packingTypeSelected ∧ P.columnDiameterCalculated ∧
  P.pressureDropPredicted ∧ P.liquidHoldup ∧
  P.massTransferArea

theorem packed_column_design_closed_from_evidence (P : PackedColumnDesignPackage)
    (E : PackedColumnDesignEvidence P) : PackedColumnDesignClosed P := by
  exact And.intro E.packingTypeSelectedClosed
    (And.intro E.columnDiameterCalculatedClosed
      (And.intro E.pressureDropPredictedClosed
        (And.intro E.liquidHoldupClosed
          E.massTransferAreaClosed)))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse