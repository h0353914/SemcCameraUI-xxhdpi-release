package com.sonyericsson.android.camera.device;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.setting.UserSettings;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;

/* JADX INFO: loaded from: classes.dex */
class CameraDeviceHandler$LoadSettingsThread extends Thread {
    private final CapturingMode mCapturingMode;
    private final UserSettings mUserSettings;
    final /* synthetic */ CameraDeviceHandler this$0;

    /* synthetic */ CameraDeviceHandler$LoadSettingsThread(CameraDeviceHandler cameraDeviceHandler, CapturingMode capturingMode, UserSettings userSettings, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler, capturingMode, userSettings);
    }

    private CameraDeviceHandler$LoadSettingsThread(CameraDeviceHandler cameraDeviceHandler, CapturingMode capturingMode, UserSettings userSettings) {
        this.this$0 = cameraDeviceHandler;
        this.mCapturingMode = capturingMode;
        this.mUserSettings = userSettings;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("LoadSettingsThread invoked  casuCapture:" + CameraDeviceHandler.access$1500(this.this$0) + " cameraId:" + this.mCapturingMode.getCameraId());
        }
        if (CameraDeviceHandler.access$1500(this.this$0) == FastCapture.LAUNCH_AND_CAPTURE) {
            if (GeotagManager.isGeoTagEnabled((Geotag) this.mUserSettings.get(this.mCapturingMode, UserSettingKey.GEO_TAG), CameraDeviceHandler.access$1600(this.this$0))) {
                CameraDeviceHandler.access$1702(this.this$0, new GeotagManager(CameraDeviceHandler.access$1600(this.this$0)));
                CameraDeviceHandler.access$1700(this.this$0).assignResource();
                CameraDeviceHandler.access$1800(this.this$0, new CameraDeviceHandler$LoadSettingsThread$1(this, null));
            }
            CameraDeviceHandler.access$1902(this.this$0, new CameraDeviceHandler$FastCaptureOrientation(this.this$0, CameraDeviceHandler.access$1600(this.this$0), null));
            CameraDeviceHandler.access$1900(this.this$0).enable();
        }
    }
}
