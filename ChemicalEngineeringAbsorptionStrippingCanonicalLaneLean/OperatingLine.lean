import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.ChemicalEngineeringObjects

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure OperatingLinePackage where
  overallMaterialBalance : Prop
  componentMaterialBalance : Prop
  diluteSystemApproximation : Prop
  operatingEquationDerived : Prop

structure OperatingLineEvidence (O : OperatingLinePackage) where
  overallMaterialBalanceClosed : O.overallMaterialBalance
  componentMaterialBalanceClosed : O.componentMaterialBalance
  diluteSystemApproximationClosed : O.diluteSystemApproximation
  operatingEquationDerivedClosed : O.operatingEquationDerived

def OperatingLineClosed (O : OperatingLinePackage) : Prop :=
  O.overallMaterialBalance ∧ O.componentMaterialBalance ∧ O.diluteSystemApproximation ∧ O.operatingEquationDerived

theorem operating_line_closed_from_evidence (O : OperatingLinePackage) (Ev : OperatingLineEvidence O) :
    OperatingLineClosed O := by
  exact And.intro Ev.overallMaterialBalanceClosed
    (And.intro Ev.componentMaterialBalanceClosed
      (And.intro Ev.diluteSystemApproximationClosed Ev.operatingEquationDerivedClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse