package com.sonymobile.imageprocessor.bypasscamera2;

class BypassCamera$CallbackPrepareBurstTask implements Runnable {
    private final boolean mIsSuccess;
    final /* synthetic */ BypassCamera this$0;

    public BypassCamera$CallbackPrepareBurstTask(BypassCamera bypassCamera, boolean z) {
        this.this$0 = bypassCamera;
        this.mIsSuccess = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$900(this.this$0) != null) {
                BypassCamera.access$900(this.this$0).onPrepareBurstDone(this.mIsSuccess);
            }
        }
    }
}
