package com.sonyericsson.android.camera;

import android.content.Context;
import android.view.OrientationEventListener;

class CameraActivity$ExtendedOrientationEventListener extends OrientationEventListener {
    final /* synthetic */ CameraActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraActivity$ExtendedOrientationEventListener(CameraActivity cameraActivity, Context context) {
        super(context);
        this.this$0 = cameraActivity;
    }

    @Override // android.view.OrientationEventListener
    public void onOrientationChanged(int i) {
        if (i != -1) {
            CameraActivity.access$4202(this.this$0, i);
        }
        if (i == CameraActivity.access$4300(this.this$0)) {
            return;
        }
        CameraActivity.access$4302(this.this$0, i);
        if (CameraActivity.access$4300(this.this$0) != -1) {
            CameraActivity.access$4402(this.this$0, CameraActivity.access$4300(this.this$0));
        }
        CameraActivity.access$4500(this.this$0, this.this$0.getLayoutOrientation());
    }
}
