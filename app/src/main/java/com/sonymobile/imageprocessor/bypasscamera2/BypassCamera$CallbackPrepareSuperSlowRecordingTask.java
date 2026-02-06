package com.sonymobile.imageprocessor.bypasscamera2;

class BypassCamera$CallbackPrepareSuperSlowRecordingTask implements Runnable {
    final /* synthetic */ BypassCamera this$0;

    private BypassCamera$CallbackPrepareSuperSlowRecordingTask(BypassCamera bypassCamera) {
        this.this$0 = bypassCamera;
    }

    /* synthetic */ BypassCamera$CallbackPrepareSuperSlowRecordingTask(BypassCamera bypassCamera, BypassCamera$1 bypassCamera$1) {
        this(bypassCamera);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$1900(this.this$0) != null) {
                BypassCamera.access$1900(this.this$0).onPrepareSuperSlowRecordingDone();
            }
        }
    }
}
