import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure AbsorptionStrippingSystem where
  liquidPhase : Type
  gasPhase : Type
  solute : Type
  contactorGeometry : Type
  transferRate : Type

structure AbsorptionStrippingAdmittedObject where
  system : AbsorptionStrippingSystem
  equilibriumModelEstablished : Prop
  massBalanceClosed : Prop
  operatingLineDefined : Prop

structure EndgameState where
  object : AbsorptionStrippingAdmittedObject

def AbsorptionStrippingWitnessClosed (O : AbsorptionStrippingAdmittedObject) : Prop :=
  O.equilibriumModelEstablished ∧ O.massBalanceClosed ∧ O.operatingLineDefined

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse