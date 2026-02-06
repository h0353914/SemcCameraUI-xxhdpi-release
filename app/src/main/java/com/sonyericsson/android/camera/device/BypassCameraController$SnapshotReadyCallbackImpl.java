package com.sonyericsson.android.camera.device;

import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$DisplayFlashColor;
import com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SnapshotReadyCallback;

class BypassCameraController$SnapshotReadyCallbackImpl implements BypassCamera$SnapshotReadyCallback {
    final /* synthetic */ BypassCameraController this$0;

    private BypassCameraController$SnapshotReadyCallbackImpl(BypassCameraController bypassCameraController) {
        this.this$0 = bypassCameraController;
    }

    /* synthetic */ BypassCameraController$SnapshotReadyCallbackImpl(BypassCameraController bypassCameraController, BypassCameraController$1 bypassCameraController$1) {
        this(bypassCameraController);
    }

    @Override // com.sonymobile.imageprocessor.bypasscamera2.BypassCamera$SnapshotReadyCallback
    public void onSnapshotReadyDone(boolean z, boolean z2, boolean z3, BypassCamera$DisplayFlashColor bypassCamera$DisplayFlashColor) {
        BypassCameraController.access$1500(this.this$0, false);
        BypassCameraController.access$1600(this.this$0);
        BypassCameraController.access$000(this.this$0).onSnapshotReadyDone(BypassCameraController.access$1700(this.this$0), z, z2, z3, bypassCamera$DisplayFlashColor);
    }
}
