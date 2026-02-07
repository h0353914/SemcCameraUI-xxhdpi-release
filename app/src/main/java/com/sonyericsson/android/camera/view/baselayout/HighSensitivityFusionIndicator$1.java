package com.sonyericsson.android.camera.view.baselayout;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: loaded from: classes.dex */
class HighSensitivityFusionIndicator$1 implements View$OnClickListener {
    final /* synthetic */ HighSensitivityFusionIndicator this$0;

    HighSensitivityFusionIndicator$1(HighSensitivityFusionIndicator highSensitivityFusionIndicator) {
        this.this$0 = highSensitivityFusionIndicator;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        this.this$0.setChecked(!view.isActivated());
        if (HighSensitivityFusionIndicator.access$000(this.this$0) != null) {
            HighSensitivityFusionIndicator.access$000(this.this$0).onClick(view);
        }
    }
}
