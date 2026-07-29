import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure StrippingFactorAnalysisPackage where
  strippingFactorDefinition : Prop
  minimumGasFlowRate : Prop
  actualGasFlowRate : Prop
  designMargin : Prop

structure StrippingFactorAnalysisEvidence (S : StrippingFactorAnalysisPackage) where
  strippingFactorDefinitionClosed : S.strippingFactorDefinition
  minimumGasFlowRateClosed : S.minimumGasFlowRate
  actualGasFlowRateClosed : S.actualGasFlowRate
  designMarginClosed : S.designMargin

def StrippingFactorAnalysisClosed (S : StrippingFactorAnalysisPackage) : Prop :=
  S.strippingFactorDefinition ∧ S.minimumGasFlowRate ∧ S.actualGasFlowRate ∧ S.designMargin

theorem stripping_factor_analysis_closed_from_evidence (S : StrippingFactorAnalysisPackage) (E : StrippingFactorAnalysisEvidence S) :
    StrippingFactorAnalysisClosed S := by
  exact And.intro E.strippingFactorDefinitionClosed
    (And.intro E.minimumGasFlowRateClosed
      (And.intro E.actualGasFlowRateClosed E.designMarginClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse