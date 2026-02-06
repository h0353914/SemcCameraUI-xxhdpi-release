package com.sonyericsson.android.camera.recorder.defaultrecorder;

class BaseRecorderController$NotifyProgressTask implements Runnable {
    private final long mRecordingTimeMillis;
    final /* synthetic */ BaseRecorderController this$0;

    public BaseRecorderController$NotifyProgressTask(BaseRecorderController baseRecorderController, long j) {
        this.this$0 = baseRecorderController;
        this.mRecordingTimeMillis = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (BaseRecorderController.access$400(this.this$0) != null) {
            BaseRecorderController.access$400(this.this$0).notifyWriteStorage();
        }
        BaseRecorderController.access$500(this.this$0).onRecordProgress(this.mRecordingTimeMillis);
    }
}
