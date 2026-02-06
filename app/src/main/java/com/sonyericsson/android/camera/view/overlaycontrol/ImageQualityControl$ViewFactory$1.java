package com.sonyericsson.android.camera.view.overlaycontrol;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.view.overlaycontrol.imagequality.ImageQualityControlView$OnImageQualityControlDialogTabSelectListener;

class ImageQualityControl$ViewFactory$1 implements ImageQualityControlView$OnImageQualityControlDialogTabSelectListener {
    final /* synthetic */ ImageQualityControl$ViewFactory this$1;

    ImageQualityControl$ViewFactory$1(ImageQualityControl$ViewFactory imageQualityControl$ViewFactory) {
        this.this$1 = imageQualityControl$ViewFactory;
    }

    @Override // com.sonyericsson.android.camera.view.overlaycontrol.imagequality.ImageQualityControlView$OnImageQualityControlDialogTabSelectListener
    public void onSelect(UserSettingKey userSettingKey) {
        if (ImageQualityControl.access$000(this.this$1.this$0)) {
            return;
        }
        ImageQualityControl.access$300(this.this$1.this$0, userSettingKey);
    }
}
