package com.sonyericsson.android.camera;

import android.content.Intent;
import com.sonyericsson.android.camera.configuration.parameters.PredictiveLaunch;
import com.sonyericsson.android.camera.configuration.parameters.SideSense;
import com.sonyericsson.android.camera.setting.MessageSettings;
import com.sonyericsson.android.camera.setting.MessageType;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.cameracommon.activity.OnActivityResultListener;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class CameraActivity$5 implements OnActivityResultListener {
    final /* synthetic */ CameraActivity this$0;

    CameraActivity$5(CameraActivity cameraActivity) {
        this.this$0 = cameraActivity;
    }

    @Override // com.sonyericsson.cameracommon.activity.OnActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            boolean booleanExtra = intent.getBooleanExtra("geo_tag_result", false);
            boolean booleanExtra2 = intent.getBooleanExtra("side_sense_result", false);
            requestLocationChange(booleanExtra);
            ArrayList arrayList = new ArrayList();
            arrayList.add(booleanExtra2 ? SideSense.ON : SideSense.OFF);
            if (PlatformCapability.isLiftTriggerSupported()) {
                arrayList.add(PredictiveLaunch.TOUCH_TO_LAUNCH);
            }
            this.this$0.getLaunchCondition().getExtraSettings().set(this.this$0.getLaunchCondition().getCapturingMode(), arrayList);
        } else if (i2 == 1) {
            this.this$0.finish();
        }
        return true;
    }

    private void requestLocationChange(boolean z) {
        if (CamLog.VERBOSE) {
            CamLog.d("requestLocationChange: enable = " + z);
        }
        if (z) {
            this.this$0.getGeoTagManager().setIsGeotagPermissionGranted(true);
        }
        MessageSettings messageSettings = this.this$0.getStoredSettings().getMessageSettings();
        messageSettings.setNeverShow(MessageType.SETUP_WIZARD, true);
        messageSettings.save();
    }
}
