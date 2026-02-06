package com.sonyericsson.android.camera.controller;

class GestureShutter$StateStopped extends GestureShutter$State {
    private final boolean mStopForRelease;
    final /* synthetic */ GestureShutter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GestureShutter$StateStopped(GestureShutter gestureShutter, boolean z) {
        super(gestureShutter, true, false);
        this.this$0 = gestureShutter;
        this.mStopForRelease = z;
    }

    private void releaseDetectorIfNeeded() {
        if (GestureShutter.access$200(this.this$0) != null) {
            if (GestureShutter.access$800(this.this$0) && !this.mStopForRelease && GestureShutter.access$900(this.this$0) && GestureShutter.access$1000(this.this$0)) {
                return;
            }
            GestureShutter.access$200(this.this$0).release();
            GestureShutter.access$202(this.this$0, null);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void entry() {
        if (GestureShutter.access$500(this.this$0) != null) {
            GestureShutter.access$500(this.this$0).hideGestureShutterView();
        }
        if (GestureShutter.access$200(this.this$0) != null) {
            if (GestureShutter.access$200(this.this$0).isStarted()) {
                GestureShutter.access$200(this.this$0).stopDetect();
            }
            releaseDetectorIfNeeded();
        }
        if (this.mStopForRelease) {
            GestureShutter.access$400(this.this$0, new GestureShutter$StateReleasing(this.this$0));
        }
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    void updateDetectionStatus() {
        releaseDetectorIfNeeded();
        super.updateDetectionStatus();
    }

    @Override // com.sonyericsson.android.camera.controller.GestureShutter$State
    public String toString() {
        return super.toString() + " [mStopForRelease=" + this.mStopForRelease + "]";
    }
}
