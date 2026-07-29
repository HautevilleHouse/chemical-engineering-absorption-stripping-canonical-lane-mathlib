import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure OperatingLinePackage where
  liquidConcentrationIn : ℝ
  liquidConcentrationOut : ℝ
  gasConcentrationIn : ℝ
  gasConcentrationOut : ℝ
  operatingLineEquation : Prop
  materialBalanceSatisfied : Prop
  componentBalanceSatisfied : Prop

structure OperatingLineEvidence (O : OperatingLinePackage) where
  operatingLineEquationClosed : O.operatingLineEquation
  materialBalanceSatisfiedClosed : O.materialBalanceSatisfied
  componentBalanceSatisfiedClosed : O.componentBalanceSatisfied

def OperatingLineClosed (O : OperatingLinePackage) : Prop :=
  O.operatingLineEquation ∧ O.materialBalanceSatisfied ∧ O.componentBalanceSatisfied

theorem operating_line_closed_from_evidence (O : OperatingLinePackage) (E : OperatingLineEvidence O) : OperatingLineClosed O :=
  by
    exact And.intro E.operatingLineEquationClosed
      (And.intro E.materialBalanceSatisfiedClosed E.componentBalanceSatisfiedClosed)

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse