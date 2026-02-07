package com.sonyericsson.android.camera.device;

import android.media.ImageReader;
import android.media.ImageReader$OnImageAvailableListener;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$MeasurementKey;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SnapshotCallback;

/* JADX INFO: loaded from: classes.dex */
class BypassCameraController$SnapshotCallbackImpl implements BypassCamera$SnapshotCallback, ImageReader$OnImageAvailableListener {
    final /* synthetic */ BypassCameraController this$0;

    private BypassCameraController$SnapshotCallbackImpl(BypassCameraController bypassCameraController) {
        this.this$0 = bypassCameraController;
    }

    /* synthetic */ BypassCameraController$SnapshotCallbackImpl(BypassCameraController bypassCameraController, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController);
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SnapshotCallback
    public void onShutterDone(int i, int i2, boolean z) {
        PerfLog.BYPASSCAMERA_ON_SHUTTER_DONE.transit();
        if (PerfLog.IS_ENABLE) {
            BypassCameraController.access$1000(this.this$0).addSampleMillis(System.currentTimeMillis());
        }
        LocalResearchUtil.getInstance().stopMeasurement(LocalResearchUtil$MeasurementKey.SHOT_TO_SHOT_DELAY);
        LocalResearchUtil.getInstance().startMeasurement(LocalResearchUtil$MeasurementKey.SHOT_TO_SHOT_DELAY);
        BypassCameraController.access$000(this.this$0).onShutterDone(i, i2, z);
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SnapshotCallback
    public void onSnapshotDone(int i) {
        PerfLog.BYPASSCAMERA_ON_SNAPSHOT_DONE.transit();
    }

    @Override // android.media.ImageReader$OnImageAvailableListener
    public void onImageAvailable(ImageReader imageReader) {
        PerfLog.BYPASSCAMERA_ON_IMAGE_AVAILABLE.transit();
        if (PerfLog.IS_ENABLE) {
            BypassCameraController.access$1100(this.this$0).addSampleMillis(System.currentTimeMillis());
        }
        if (CamLog.DEBUG) {
            String[] strArr = new String[1];
            StringBuilder sb = new StringBuilder();
            sb.append("invoked imageReader:");
            sb.append(imageReader != null);
            sb.append("pre-process:");
            sb.append(BypassCameraController.access$1400(this.this$0).getPreProcessState());
            strArr[0] = sb.toString();
            CamLog.d(strArr);
        }
        if (imageReader != null) {
            RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilderAccess$1800 = BypassCameraController.access$1800(this.this$0, imageReader);
            if (BypassCameraController.access$1400(this.this$0).getPreProcessState() != CameraDeviceHandler$PreProcessState.PRE_CAPTURE_RELEASED) {
                BypassCameraController.access$000(this.this$0).onSnapshotDone(requestFactory$PhotoSavingRequestBuilderAccess$1800);
            } else {
                requestFactory$PhotoSavingRequestBuilderAccess$1800.close();
            }
        }
    }
}
