package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class CaptureArea$CaptureAreaTouchEventListener implements View$OnTouchListener {
    final /* synthetic */ CaptureArea this$0;

    CaptureArea$CaptureAreaTouchEventListener(CaptureArea captureArea) {
        this.this$0 = captureArea;
    }

    @Override // android.view.View$OnTouchListener
    public synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        if (!CaptureArea.access$000(this.this$0).onTouchEvent(motionEvent)) {
            if (CamLog.VERBOSE) {
                CamLog.d("touch event is out of target area");
            }
            CaptureArea.access$102(this.this$0, false);
            if (CaptureArea.access$200(this.this$0) != null) {
                CaptureArea.access$200(this.this$0).onCaptureAreaCanceled();
            }
        }
        return true;
    }
}
