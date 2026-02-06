package com.sonyericsson.android.camera.view;

import android.view.View;
import android.view.View$OnClickListener;
import com.sonyericsson.android.camera.util.CamLog;

class ViewFinderImpl$8 implements View$OnClickListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$8(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        if (CamLog.VERBOSE) {
            CamLog.d("Wide front button is clicked, isCameraSwitching: " + this.this$0.isCameraSwitching());
        }
        ViewFinderImpl.access$2000(this.this$0).sendClick(UserEventHandler$UiComponent.ANGLE_CHANGE_BUTTON, null);
    }
}
