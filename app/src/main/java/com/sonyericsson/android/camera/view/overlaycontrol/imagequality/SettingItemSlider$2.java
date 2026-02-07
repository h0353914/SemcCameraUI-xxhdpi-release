package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

/* JADX INFO: loaded from: classes.dex */
class SettingItemSlider$2 implements View$OnTouchListener {
    final /* synthetic */ SettingItemSlider this$0;

    SettingItemSlider$2(SettingItemSlider settingItemSlider) {
        this.this$0 = settingItemSlider;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                view.setPressed(true);
                SettingItemSlider.access$200(this.this$0).onSlideStarted();
                this.this$0.update(motionEvent.getY());
                return true;
            case 1:
                if (view.isPressed() && view.isShown()) {
                    this.this$0.update(motionEvent.getY());
                    SettingItemSlider.access$200(this.this$0).onSlideStopped();
                }
                view.setPressed(false);
                return false;
            case 2:
                if (view.isPressed() && view.isShown()) {
                    this.this$0.update(motionEvent.getY());
                }
                return false;
            default:
                return false;
        }
    }
}
