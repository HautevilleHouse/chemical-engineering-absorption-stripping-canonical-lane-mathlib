import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStripping

structure MassTransferKinetics where
  filmModel : String
  liquidFilmCoefficient : ℝ
  gasFilmCoefficient : ℝ
  overallLiquidCoefficient : ℝ
  overallGasCoefficient : ℝ
  interfacialArea : ℝ
  diffusionCoefficient : ℝ
  filmModelApplied : Prop
  twoFilmTheory : Prop
  overallCoefficientsValid : Prop
  interfacialTransport : Prop

structure MassTransferKineticsEvidence (K : MassTransferKinetics) where
  filmModelAppliedClosed : K.filmModelApplied
  twoFilmTheoryClosed : K.twoFilmTheory
  overallCoefficientsValidClosed : K.overallCoefficientsValid
  interfacialTransportClosed : K.interfacialTransport

def MassTransferKineticsClosed (K : MassTransferKinetics) : Prop :=
  K.filmModelApplied ∧ K.twoFilmTheory ∧ K.overallCoefficientsValid ∧ K.interfacialTransport

theorem mass_transfer_kinetics_closed_from_evidence (K : MassTransferKinetics)
    (E : MassTransferKineticsEvidence K) : MassTransferKineticsClosed K := by
  exact And.intro E.filmModelAppliedClosed
    (And.intro E.twoFilmTheoryClosed
      (And.intro E.overallCoefficientsValidClosed E.interfacialTransportClosed))

end ChemicalEngineeringAbsorptionStripping
end HautevilleHouse