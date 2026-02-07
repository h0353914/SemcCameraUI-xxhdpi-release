package com.sonyericsson.android.camera.device;

import android.media.ImageReader;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.storage.PhotoSavingRequest$OnImageReaderDetachedListener;

/* JADX INFO: loaded from: classes.dex */
class BypassCameraController$OnImageReaderDetachedListenerImpl implements PhotoSavingRequest$OnImageReaderDetachedListener {
    final /* synthetic */ BypassCameraController this$0;

    private BypassCameraController$OnImageReaderDetachedListenerImpl(BypassCameraController bypassCameraController) {
        this.this$0 = bypassCameraController;
    }

    /* synthetic */ BypassCameraController$OnImageReaderDetachedListenerImpl(BypassCameraController bypassCameraController, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController);
    }

    @Override // com.sonyericsson.cameracommon.storage.PhotoSavingRequest$OnImageReaderDetachedListener
    public void onDetached(ImageReader imageReader) {
        synchronized (BypassCameraController.access$500(this.this$0)) {
            if (BypassCameraController.access$600(this.this$0) != imageReader) {
                CamLog.e("This callback is not for current ImageReader.");
                return;
            }
            BypassCameraController.access$700(this.this$0).poll();
            if (CamLog.DEBUG) {
                CamLog.d(BypassCameraController.access$800(this.this$0));
            }
            if (BypassCameraController.access$900(this.this$0) != null) {
                BypassCameraController.access$900(this.this$0).countDown();
            }
            if (PerfLog.IS_ENABLE && this.this$0.getRemainSavingPhotoRequestCount() == 0) {
                CamLog.d("SHUTTER_FPS_MONITOR:" + BypassCameraController.access$1000(this.this$0).dump());
                CamLog.d("IMAGE_FPS_MONITOR:" + BypassCameraController.access$1100(this.this$0).dump());
                BypassCameraController.access$1000(this.this$0).reset();
                BypassCameraController.access$1100(this.this$0).reset();
            }
        }
    }
}
