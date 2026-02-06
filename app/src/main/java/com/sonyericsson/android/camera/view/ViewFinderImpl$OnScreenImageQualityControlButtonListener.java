package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButton;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener;

public class ViewFinderImpl$OnScreenImageQualityControlButtonListener implements OnScreenButtonListener {
    final /* synthetic */ ViewFinderImpl this$0;

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onLongPress(OnScreenButton onScreenButton) {
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
    }

    public ViewFinderImpl$OnScreenImageQualityControlButtonListener(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonListener
    public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        if (ViewFinderImpl.access$700(this.this$0).getImageQualityControl().get().isEnabled()) {
            ViewFinderImpl.access$7100(this.this$0, ViewFinderImpl.access$700(this.this$0).getImageQualityControl());
        } else {
            ViewFinderImpl.access$7200(this.this$0, ViewFinderImpl.access$700(this.this$0).getImageQualityControl());
        }
    }
}
