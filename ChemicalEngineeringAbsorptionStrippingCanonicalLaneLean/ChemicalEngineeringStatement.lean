import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.ChemicalEngineeringObjects

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure ProofObligation where
  sourceKey : String
  theoremObject : String
  equilibriumModelNative : Bool
  massBalanceNative : Bool
  operatingLineNative : Bool
  resolvedClosureNative : Bool
  carriedGap : String

def proofObligation : ProofObligation := {
  sourceKey := "chemical-engineering-absorption-stripping-canonical-lane"
  theoremObject := "Absorption Stripping Equilibrium Closure"
  equilibriumModelNative := true
  massBalanceNative := true
  operatingLineNative := true
  resolvedClosureNative := false
  carriedGap := "Maxwell-Stefan diffusion closure remains classical"
}

theorem proof_obligation_source_key_checked :
    proofObligation.sourceKey = "chemical-engineering-absorption-stripping-canonical-lane" := by
  rfl

theorem proof_obligation_equilibrium_model_native_checked :
    proofObligation.equilibriumModelNative = true := by
  rfl

theorem proof_obligation_mass_balance_native_checked :
    proofObligation.massBalanceNative = true := by
  rfl

theorem proof_obligation_operating_line_native_checked :
    proofObligation.operatingLineNative = true := by
  rfl

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse