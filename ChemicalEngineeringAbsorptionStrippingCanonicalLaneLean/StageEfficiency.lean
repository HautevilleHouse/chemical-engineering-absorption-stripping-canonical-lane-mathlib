import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean

structure StageEfficiencyPackage where
  murphreeEfficiencyDefinition : Prop
  pointEfficiencyRelation : Prop
  overallEfficiencyDefinition : Prop
  efficiencyCorrelation : Prop

structure StageEfficiencyEvidence (S : StageEfficiencyPackage) where
  murphreeEfficiencyDefinitionClosed : S.murphreeEfficiencyDefinition
  pointEfficiencyRelationClosed : S.pointEfficiencyRelation
  overallEfficiencyDefinitionClosed : S.overallEfficiencyDefinition
  efficiencyCorrelationClosed : S.efficiencyCorrelation

def StageEfficiencyClosed (S : StageEfficiencyPackage) : Prop :=
  S.murphreeEfficiencyDefinition ∧ S.pointEfficiencyRelation ∧ S.overallEfficiencyDefinition ∧ S.efficiencyCorrelation

theorem stage_efficiency_closed_from_evidence (S : StageEfficiencyPackage) (E : StageEfficiencyEvidence S) :
    StageEfficiencyClosed S := by
  exact And.intro E.murphreeEfficiencyDefinitionClosed
    (And.intro E.pointEfficiencyRelationClosed
      (And.intro E.overallEfficiencyDefinitionClosed E.efficiencyCorrelationClosed))

end ChemicalEngineeringAbsorptionStrippingCanonicalLaneLean
end HautevilleHouse