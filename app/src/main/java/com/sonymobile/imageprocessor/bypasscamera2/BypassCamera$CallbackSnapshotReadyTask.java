package com.sonymobile.imageprocessor.bypasscamera2;

/* JADX INFO: loaded from: classes.dex */
class BypassCamera$CallbackSnapshotReadyTask implements Runnable {
    private final BypassCamera$DisplayFlashColor mDisplayFlashColor;
    private final boolean mIsAfSuccessed;
    private final boolean mIsHighQualityBurstAvailable;
    private final boolean mRequireDisplayFlash;
    final /* synthetic */ BypassCamera this$0;

    public BypassCamera$CallbackSnapshotReadyTask(BypassCamera bypassCamera, boolean z, boolean z2, boolean z3, int i, int i2, int i3) {
        this.this$0 = bypassCamera;
        this.mIsHighQualityBurstAvailable = z;
        this.mIsAfSuccessed = z2;
        this.mRequireDisplayFlash = z3;
        this.mDisplayFlashColor = new BypassCamera$DisplayFlashColor(i, i2, i3);
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.this$0) {
            if (BypassCamera.access$600(this.this$0) != null) {
                BypassCamera.access$600(this.this$0).onSnapshotReadyDone(this.mIsHighQualityBurstAvailable, this.mIsAfSuccessed, this.mRequireDisplayFlash, this.mDisplayFlashColor);
            }
        }
    }
}
