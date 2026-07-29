import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure SoluteRecovery (A : AdmissibleClass) where
  recoveryFraction : Prop
  strippingFactor : Prop
  numberTransferUnits : Prop
  heightTransferUnits : Prop

structure SoluteRecoveryEvidence (S : SoluteRecovery A) where
  recoveryFractionClosed : S.recoveryFraction
  strippingFactorClosed : S.strippingFactor
  numberTransferUnitsClosed : S.numberTransferUnits
  heightTransferUnitsClosed : S.heightTransferUnits

def SoluteRecoveryClosed (S : SoluteRecovery A) : Prop :=
  S.recoveryFraction ∧ S.strippingFactor ∧ S.numberTransferUnits ∧ S.heightTransferUnits

theorem solute_recovery_closed_from_evidence (S : SoluteRecovery A) (E : SoluteRecoveryEvidence S) :
    SoluteRecoveryClosed S := by
  exact And.intro E.recoveryFractionClosed
    (And.intro E.strippingFactorClosed
      (And.intro E.numberTransferUnitsClosed E.heightTransferUnitsClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse