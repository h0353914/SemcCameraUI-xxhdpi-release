package com.sonyericsson.android.camera;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.research.ResearchUtil;
import com.sonymobile.cameracommon.research.parameters.Event$AutoPowerOffAction;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$AutoPowerOffListenerImpl implements AutoPowerOffTimer$AutoPowerOffListener {
    final /* synthetic */ CameraActivity this$0;

    private CameraActivity$AutoPowerOffListenerImpl(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    /* synthetic */ CameraActivity$AutoPowerOffListenerImpl(CameraActivity cameraActivity, CameraActivity$1 cameraActivity$1) {
        this(cameraActivity);
    }

    @Override // com.sonyericsson.android.camera.AutoPowerOffTimer$AutoPowerOffListener
    public void onAutoPowerOffWarning() {
        if (CameraActivity.access$2900(this.this$0) == null || this.this$0.isInLockTaskMode()) {
            return;
        }
        CameraActivity.access$2900(this.this$0).showAutoPowerOffHintText();
    }

    @Override // com.sonyericsson.android.camera.AutoPowerOffTimer$AutoPowerOffListener
    public void onAutoPowerOff(Object obj) {
        if (this.this$0.isInLockTaskMode()) {
            CameraActivity.access$2900(this.this$0).hideAutoPowerOffHintText();
        }
        Event$AutoPowerOffAction action = null;
        if (obj.equals(CameraActivity$AutoPowerOffType.LIFT_TRIGGER.getReason()) || obj.equals(CameraActivity$AutoPowerOffType.LIFT_TRIGGER_DIALOG.getReason())) {
            CameraActivity.access$1500(this.this$0).execute(new CameraActivity$ScreenOffTask(this.this$0, null));
        }
        CameraActivity$AutoPowerOffType[] cameraActivity$AutoPowerOffTypeArrValues = CameraActivity$AutoPowerOffType.values();
        int length = cameraActivity$AutoPowerOffTypeArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            CameraActivity$AutoPowerOffType cameraActivity$AutoPowerOffType = cameraActivity$AutoPowerOffTypeArrValues[i];
            if (obj.equals(cameraActivity$AutoPowerOffType.getReason())) {
                action = cameraActivity$AutoPowerOffType.getAction();
                break;
            }
            i++;
        }
        if (action != null) {
            ResearchUtil.getInstance().sendAutoPowerOffEvent(action);
        } else {
            CamLog.w("AutoPowerOffAction is not found.");
        }
        this.this$0.abort();
    }
}
