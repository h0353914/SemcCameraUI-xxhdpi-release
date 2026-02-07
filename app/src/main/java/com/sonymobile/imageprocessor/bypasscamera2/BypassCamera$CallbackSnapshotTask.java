package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
class BypassCamera$CallbackSnapshotTask implements Runnable {
    private final int mRequestId;
    final /* synthetic */ BypassCamera this$0;

    public BypassCamera$CallbackSnapshotTask(BypassCamera bypassCamera, int i) {
        this.this$0 = bypassCamera;
        this.mRequestId = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$700(this.this$0) != null) {
                BypassCamera.access$700(this.this$0).onSnapshotDone(this.mRequestId);
            }
        }
    }
}
