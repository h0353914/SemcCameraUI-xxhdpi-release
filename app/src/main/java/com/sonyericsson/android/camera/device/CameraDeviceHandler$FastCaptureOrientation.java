package com.sonyericsson.android.camera.device;

import android.content.Context;
import android.view.OrientationEventListener;
import com.sonyericsson.cameracommon.utility.RotationUtil;

class CameraDeviceHandler$FastCaptureOrientation extends OrientationEventListener {
    private int mOrientation;
    final /* synthetic */ CameraDeviceHandler this$0;

    /* synthetic */ CameraDeviceHandler$FastCaptureOrientation(CameraDeviceHandler cameraDeviceHandler, Context context, CameraDeviceHandler$1 cameraDeviceHandler$1) {
        this(cameraDeviceHandler, context);
    }

    static /* synthetic */ int access$2100(CameraDeviceHandler$FastCaptureOrientation cameraDeviceHandler$FastCaptureOrientation) {
        return cameraDeviceHandler$FastCaptureOrientation.getOrientation();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private CameraDeviceHandler$FastCaptureOrientation(CameraDeviceHandler cameraDeviceHandler, Context context) {
        super(context);
        this.this$0 = cameraDeviceHandler;
        this.mOrientation = -1;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        this.mOrientation = i;
    }

    private int getOrientation() {
        int normalizedRotation = RotationUtil.getNormalizedRotation(this.mOrientation);
        CameraInfo cameraInfo = this.this$0.getCameraInfo();
        switch (cameraInfo.facing) {
        }
        return (cameraInfo.orientation + normalizedRotation) % 360;
    }
}
