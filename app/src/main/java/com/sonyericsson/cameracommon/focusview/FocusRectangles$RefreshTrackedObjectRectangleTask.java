package com.sonyericsson.cameracommon.focusview;

import com.sonyericsson.android.camera.util.CamLog;

class FocusRectangles$RefreshTrackedObjectRectangleTask implements Runnable {
    final /* synthetic */ FocusRectangles this$0;

    FocusRectangles$RefreshTrackedObjectRectangleTask(FocusRectangles focusRectangles) {
        this.this$0 = focusRectangles;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (CamLog.VERBOSE) {
            CamLog.d("RefreshTrackedObjectRectangleTask.run():[IN]");
        }
        if (FocusRectangles.access$3200(this.this$0) == null || FocusRectangles.access$1200(this.this$0) == null) {
            return;
        }
        FocusRectangles.access$1200(this.this$0).setVisibility(4);
        this.this$0.onObjectRemoved();
    }
}
