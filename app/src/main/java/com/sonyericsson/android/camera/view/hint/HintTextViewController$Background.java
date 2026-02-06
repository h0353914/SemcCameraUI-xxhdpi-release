package com.sonyericsson.android.camera.view.hint;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.sonyericsson.android.camera.util.CamLog;

class HintTextViewController$Background extends FrameLayout {
    final /* synthetic */ HintTextViewController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HintTextViewController$Background(HintTextViewController hintTextViewController, Context context) {
        super(context);
        this.this$0 = hintTextViewController;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (CamLog.VERBOSE) {
            CamLog.d("onTouchEvent: " + motionEvent.getAction());
        }
        if (!HintTextViewController.access$800(this.this$0).isEmpty()) {
            switch (motionEvent.getAction()) {
                case 0:
                    return this.this$0.isHintTextDisplayed(HintTextAutoPowerOff.class.getSimpleName());
                case 1:
                    return false;
            }
        }
        return false;
    }
}
