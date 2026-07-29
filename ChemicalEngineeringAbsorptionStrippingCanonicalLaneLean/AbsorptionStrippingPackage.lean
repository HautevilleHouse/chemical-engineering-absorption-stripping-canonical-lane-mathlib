import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStripping

structure AbsorptionStrippingPackage where
  feedRate : ℝ
  feedComposition : ℝ
  liquidRate : ℝ
  vapourRate : ℝ
  numberOfStages : ℕ
  stageEfficiency : ℝ
  soluteBalance : Prop
  equilibriumRelation : Prop
  operatingLine : Prop
  strippingFactor : Prop
  massTransfer : Prop

structure AbsorptionStrippingEvidence (A : AbsorptionStrippingPackage) where
  soluteBalanceClosed : A.soluteBalance
  equilibriumRelationClosed : A.equilibriumRelation
  operatingLineClosed : A.operatingLine
  strippingFactorClosed : A.strippingFactor
  massTransferClosed : A.massTransfer

def AbsorptionStrippingClosed (A : AbsorptionStrippingPackage) : Prop :=
  A.soluteBalance ∧ A.equilibriumRelation ∧ A.operatingLine ∧ A.strippingFactor ∧ A.massTransfer

theorem absorption_stripping_closed_from_evidence (A : AbsorptionStrippingPackage)
    (E : AbsorptionStrippingEvidence A) : AbsorptionStrippingClosed A := by
  exact And.intro E.soluteBalanceClosed
    (And.intro E.equilibriumRelationClosed
      (And.intro E.operatingLineClosed
        (And.intro E.strippingFactorClosed E.massTransferClosed)))

end ChemicalEngineeringAbsorptionStripping
end HautevilleHouse