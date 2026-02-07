package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.Intent;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractPhotoState;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClient$NotifyPhotoStateTask implements Runnable {
    private final AbstractCapturableState$AbstractPhotoState mPhotoState;
    final /* synthetic */ WearableBridgeClient this$0;

    WearableBridgeClient$NotifyPhotoStateTask(WearableBridgeClient wearableBridgeClient, AbstractCapturableState$AbstractPhotoState abstractCapturableState$AbstractPhotoState) {
        this.this$0 = wearableBridgeClient;
        this.mPhotoState = abstractCapturableState$AbstractPhotoState;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.DEBUG) {
            CamLog.d("NotifyPhotoStateTask.run() : E");
        }
        if (!WearableBridgeClient.access$1700(this.this$0)) {
            if (CamLog.DEBUG) {
                CamLog.d("onStateChanged() : Observer disabled.");
            }
        } else {
            Intent intentAccess$1900 = WearableBridgeClient.access$1900(this.this$0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_STATE_CHANGED");
            intentAccess$1900.putExtra("wearable-bridge-photo-state-key", this.mPhotoState.name());
            WearableBridgeClient.access$1800(this.this$0).sendBroadcast(intentAccess$1900);
            if (CamLog.DEBUG) {
                CamLog.d("NotifyPhotoStateTask.run() : X");
            }
        }
    }
}
