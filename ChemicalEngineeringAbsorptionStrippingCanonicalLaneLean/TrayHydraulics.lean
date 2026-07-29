import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringAbsorptionStripping

structure TrayHydraulics where
  trayType : String
  weirHeight : ℝ
  weirLength : ℝ
  holeArea : ℝ
  downcomerArea : ℝ
  liquidHead : ℝ
  vapourVelocity : ℝ
  pressureDrop : ℝ
  weepingPoint : ℝ
  entrainment : ℝ
  weepingPredicted : Prop
  entrainmentPredicted : Prop
  downcomerBackup : Prop
  hydraulicStability : Prop

structure TrayHydraulicsEvidence (T : TrayHydraulics) where
  weepingPredictedClosed : T.weepingPredicted
  entrainmentPredictedClosed : T.entrainmentPredicted
  downcomerBackupClosed : T.downcomerBackup
  hydraulicStabilityClosed : T.hydraulicStability

def TrayHydraulicsClosed (T : TrayHydraulics) : Prop :=
  T.weepingPredicted ∧ T.entrainmentPredicted ∧ T.downcomerBackup ∧ T.hydraulicStability

theorem tray_hydraulics_closed_from_evidence (T : TrayHydraulics)
    (E : TrayHydraulicsEvidence T) : TrayHydraulicsClosed T := by
  exact And.intro E.weepingPredictedClosed
    (And.intro E.entrainmentPredictedClosed
      (And.intro E.downcomerBackupClosed E.hydraulicStabilityClosed))

end ChemicalEngineeringAbsorptionStripping
end HautevilleHouse