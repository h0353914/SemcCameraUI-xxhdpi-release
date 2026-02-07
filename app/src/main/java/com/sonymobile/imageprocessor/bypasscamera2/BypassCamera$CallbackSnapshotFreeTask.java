package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
class BypassCamera$CallbackSnapshotFreeTask implements Runnable {
    final /* synthetic */ BypassCamera this$0;

    private BypassCamera$CallbackSnapshotFreeTask(BypassCamera bypassCamera) {
        this.this$0 = bypassCamera;
    }

    /* synthetic */ BypassCamera$CallbackSnapshotFreeTask(BypassCamera bypassCamera, BypassCamera$1 bypassCamera$1) {
        this(bypassCamera);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$800(this.this$0) != null) {
                BypassCamera.access$800(this.this$0).onSnapshotFreeDone();
            }
        }
    }
}
