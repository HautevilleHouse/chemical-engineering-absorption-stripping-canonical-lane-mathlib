import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.MassTransferPackage
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.EquilibriumStages
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.PackedColumnDesign

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

def ConstrainedAbsorptionStrippingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_absorption_stripping_endgame (A : AdmissibleClass) :
    ConstrainedAbsorptionStrippingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse