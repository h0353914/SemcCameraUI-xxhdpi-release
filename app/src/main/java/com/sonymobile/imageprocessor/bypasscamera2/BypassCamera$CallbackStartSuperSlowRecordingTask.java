package com.sonymobile.imageprocessor.bypasscamera2;

class BypassCamera$CallbackStartSuperSlowRecordingTask implements Runnable {
    final /* synthetic */ BypassCamera this$0;

    private BypassCamera$CallbackStartSuperSlowRecordingTask(BypassCamera bypassCamera) {
        this.this$0 = bypassCamera;
    }

    /* synthetic */ BypassCamera$CallbackStartSuperSlowRecordingTask(BypassCamera bypassCamera, BypassCamera$1 bypassCamera$1) {
        this(bypassCamera);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$2000(this.this$0) != null) {
                BypassCamera.access$2000(this.this$0).onStartSuperSlowRecordingDone();
            }
        }
    }
}
