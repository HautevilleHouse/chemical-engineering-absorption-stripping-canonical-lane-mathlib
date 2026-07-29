import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure AbsorptionColumnPackage where
  operatingLineEquation : Prop
  equilibriumCurve : Prop
  strippingFactorDefinition : Prop
  numberOfTheoreticalStages : Prop

structure AbsorptionColumnEvidence (A : AbsorptionColumnPackage) where
  operatingLineEquationClosed : A.operatingLineEquation
  equilibriumCurveClosed : A.equilibriumCurve
  strippingFactorDefinitionClosed : A.strippingFactorDefinition
  numberOfTheoreticalStagesClosed : A.numberOfTheoreticalStages

def AbsorptionColumnClosed (A : AbsorptionColumnPackage) : Prop :=
  A.operatingLineEquation ∧ A.equilibriumCurve ∧ A.strippingFactorDefinition ∧ A.numberOfTheoreticalStages

theorem absorption_column_closed_from_evidence (A : AbsorptionColumnPackage) (E : AbsorptionColumnEvidence A) :
    AbsorptionColumnClosed A := by
  exact And.intro E.operatingLineEquationClosed
    (And.intro E.equilibriumCurveClosed
      (And.intro E.strippingFactorDefinitionClosed E.numberOfTheoreticalStagesClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse