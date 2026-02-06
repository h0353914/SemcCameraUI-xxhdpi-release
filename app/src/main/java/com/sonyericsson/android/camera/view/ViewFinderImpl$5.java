package com.sonyericsson.android.camera.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.util.CamLog;

class ViewFinderImpl$5 implements View$OnTouchListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$5(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // android.view.View$OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                if (CamLog.VERBOSE) {
                    CamLog.d("onTouch ACTION_DOWN");
                }
                if (ViewFinderImpl.access$3500(this.this$0)) {
                    return false;
                }
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
                return true;
            case 1:
                if (CamLog.VERBOSE) {
                    CamLog.d("onTouch ACTION_UP");
                }
                if (ViewFinderImpl.access$3500(this.this$0)) {
                    return false;
                }
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
                if (ViewFinderImpl.access$2200(this.this$0).isObjectTrackingRunning() && !ViewFinderImpl.access$3600(this.this$0)) {
                    ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_DESELECT_OBJECT_POSITION, new Object[0]);
                }
                this.this$0.hideAutoReview();
                this.this$0.switchSemiAutoStateByTouch(false);
                return true;
            case 2:
                if (CamLog.VERBOSE) {
                    CamLog.d("onTouch ACTION_MOVE");
                }
                if (ViewFinderImpl.access$3500(this.this$0)) {
                    return false;
                }
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_CLEAR_FOCUS, new Object[0]);
                return true;
            default:
                return false;
        }
    }
}
