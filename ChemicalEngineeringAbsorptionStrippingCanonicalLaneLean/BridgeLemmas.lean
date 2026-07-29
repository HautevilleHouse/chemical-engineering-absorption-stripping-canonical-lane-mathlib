import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.bridgeConditions

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.bridgeConditions

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse