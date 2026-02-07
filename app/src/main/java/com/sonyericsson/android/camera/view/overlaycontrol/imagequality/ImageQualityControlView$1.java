package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.configuration.UserSettingKey;

/* JADX INFO: loaded from: classes.dex */
class ImageQualityControlView$1 implements View$OnClickListener {
    final /* synthetic */ ImageQualityControlView this$0;

    ImageQualityControlView$1(ImageQualityControlView imageQualityControlView) {
        this.this$0 = imageQualityControlView;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ImageQualityControlView.access$000(this.this$0).onSelect((UserSettingKey) view.getTag());
    }
}
