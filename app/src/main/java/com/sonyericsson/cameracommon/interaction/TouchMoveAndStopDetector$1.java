package com.sonyericsson.cameracommon.interaction;

/* JADX INFO: loaded from: classes.dex */
class TouchMoveAndStopDetector$1 implements Runnable {
    final /* synthetic */ TouchMoveAndStopDetector this$0;

    TouchMoveAndStopDetector$1(TouchMoveAndStopDetector touchMoveAndStopDetector) {
        this.this$0 = touchMoveAndStopDetector;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (TouchMoveAndStopDetector.access$800(this.this$0) != null) {
            TouchMoveAndStopDetector.access$800(this.this$0).onSingleTouchStopDetected(TouchMoveAndStopDetector.access$100(this.this$0), TouchMoveAndStopDetector.access$900(this.this$0), TouchMoveAndStopDetector.access$1000(this.this$0));
        }
    }
}
