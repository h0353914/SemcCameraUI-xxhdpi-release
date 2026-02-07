package com.sonyericsson.android.camera.recorder.superslowrecorder;

/* JADX INFO: loaded from: classes.dex */
class VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask implements Runnable {
    private final long mTimeMillis;
    final /* synthetic */ VariableSourceMediaRecorder$MediaEncoderStateListener this$1;

    public VariableSourceMediaRecorder$MediaEncoderStateListener$ProgressNotificationTask(VariableSourceMediaRecorder$MediaEncoderStateListener variableSourceMediaRecorder$MediaEncoderStateListener, long j) {
        this.this$1 = variableSourceMediaRecorder$MediaEncoderStateListener;
        this.mTimeMillis = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        VariableSourceMediaRecorder.access$800(this.this$1.this$0).onProgress(this.mTimeMillis);
        VariableSourceMediaRecorder.access$900(this.this$1.this$0).onProgress(this.mTimeMillis);
    }
}
