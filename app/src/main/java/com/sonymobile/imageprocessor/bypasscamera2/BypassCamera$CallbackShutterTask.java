package com.sonymobile.imageprocessor.bypasscamera2;

class BypassCamera$CallbackShutterTask implements Runnable {
    private final int mCaptureNum;
    private final boolean mIsAfSuccessed;
    private final int mRequestId;
    final /* synthetic */ BypassCamera this$0;

    public BypassCamera$CallbackShutterTask(BypassCamera bypassCamera, int i, int i2, boolean z) {
        this.this$0 = bypassCamera;
        this.mRequestId = i;
        this.mCaptureNum = i2;
        this.mIsAfSuccessed = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$700(this.this$0) != null) {
                BypassCamera.access$700(this.this$0).onShutterDone(this.mRequestId, this.mCaptureNum, this.mIsAfSuccessed);
            }
        }
    }
}
