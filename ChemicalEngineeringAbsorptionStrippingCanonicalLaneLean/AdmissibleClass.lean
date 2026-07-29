import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure AdmissibleClass where
  packageId : String
  bridgeConditions : Prop
  gateConditions : Prop
  remainder : Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.bridgeConditions ∧ (A.gateConditions ∨ A.remainder)

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse