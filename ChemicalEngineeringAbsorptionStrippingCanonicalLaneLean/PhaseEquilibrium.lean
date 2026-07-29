import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure PhaseEquilibrium (A : AdmissibleClass) where
  henryLaw : Prop
  raoultLaw : Prop
  activityCoefficient : Prop
  solubilityData : Prop

structure PhaseEquilibriumEvidence (P : PhaseEquilibrium A) where
  henryLawClosed : P.henryLaw
  raoultLawClosed : P.raoultLaw
  activityCoefficientClosed : P.activityCoefficient
  solubilityDataClosed : P.solubilityData

def PhaseEquilibriumClosed (P : PhaseEquilibrium A) : Prop :=
  P.henryLaw ∧ P.raoultLaw ∧ P.activityCoefficient ∧ P.solubilityData

theorem phase_equilibrium_closed_from_evidence (P : PhaseEquilibrium A) (E : PhaseEquilibriumEvidence P) :
    PhaseEquilibriumClosed P := by
  exact And.intro E.henryLawClosed
    (And.intro E.raoultLawClosed
      (And.intro E.activityCoefficientClosed E.solubilityDataClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse