package com.sonyericsson.android.camera.view.overlaycontrol;

import com.sonyericsson.android.camera.view.overlaycontrol.imagequality.OnSlideListener;

class ImageQualityControl$1 implements OnSlideListener {
    final /* synthetic */ ImageQualityControl this$0;

    ImageQualityControl$1(ImageQualityControl imageQualityControl) {
        this.this$0 = imageQualityControl;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.OnSlideListener
    public void onSlideStarted() {
        ImageQualityControl.access$002(this.this$0, true);
        this.this$0.notifyValueUpdateStart();
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.OnSlideListener
    public void onSlideStopped() {
        ImageQualityControl.access$002(this.this$0, false);
        this.this$0.notifyValueUpdateEnd();
    }
}
