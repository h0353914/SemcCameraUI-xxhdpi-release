package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonyericsson.android.camera.util.CamLog;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState$AbstractPhotoState;

/* JADX INFO: loaded from: classes.dex */
class WearableBridgeClient$PhotoStateNotifierImpl implements NotifyWearableInterface$PhotoStateNotifier {
    final /* synthetic */ WearableBridgeClient this$0;

    private WearableBridgeClient$PhotoStateNotifierImpl(WearableBridgeClient wearableBridgeClient) {
        this.this$0 = wearableBridgeClient;
    }

    /* synthetic */ WearableBridgeClient$PhotoStateNotifierImpl(WearableBridgeClient wearableBridgeClient, WearableBridgeClient$1 wearableBridgeClient$1) {
        this(wearableBridgeClient);
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface$PhotoStateNotifier
    public void onStateChanged(AbstractCapturableState$AbstractPhotoState abstractCapturableState$AbstractPhotoState) {
        if (CamLog.DEBUG) {
            CamLog.d("onStateChanged() : E");
        }
        WearableBridgeClient.access$1500(this.this$0).execute(new WearableBridgeClient$NotifyPhotoStateTask(this.this$0, abstractCapturableState$AbstractPhotoState));
        if (CamLog.DEBUG) {
            CamLog.d("onStateChanged() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface$PhotoStateNotifier
    public void onCaptureSucceeded() {
        if (CamLog.DEBUG) {
            CamLog.d("onCaptureSucceeded() : E");
        }
        WearableBridgeClient.access$1500(this.this$0).execute(new WearableBridgeClient$NotifyCaptureSucceededTask(this.this$0, null));
        if (CamLog.DEBUG) {
            CamLog.d("onCaptureSucceeded() : X");
        }
    }

    @Override // com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface$PhotoStateNotifier
    public void onCaptureFailed() {
        if (CamLog.DEBUG) {
            CamLog.d("onCaptureFailed() : E");
        }
        WearableBridgeClient.access$1500(this.this$0).execute(new WearableBridgeClient$NotifyCaptureFailedTask(this.this$0, null));
        if (CamLog.DEBUG) {
            CamLog.d("onCaptureFailed() : X");
        }
    }
}
