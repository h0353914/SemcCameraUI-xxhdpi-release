package com.sonyericsson.android.camera.device;

import com.sonyericsson.cameracommon.storage.RequestFactory$PhotoSavingRequestBuilder;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DisplayFlashColor;
import java.util.concurrent.ExecutorService;

interface BypassCameraController$BypassCameraControllerCallback {
    void onCameraClosed();

    void onPrepareBurstDone(boolean z);

    void onShutterDone(int i, int i2, boolean z);

    void onSnapshotDone(RequestFactory$PhotoSavingRequestBuilder requestFactory$PhotoSavingRequestBuilder);

    void onSnapshotReadyDone(ExecutorService executorService, boolean z, boolean z2, boolean z3, BypassCamera$DisplayFlashColor bypassCamera$DisplayFlashColor);
}
