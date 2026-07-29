import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.gateConditions ∨ A.remainder

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateConditions ∨ A.remainder

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse