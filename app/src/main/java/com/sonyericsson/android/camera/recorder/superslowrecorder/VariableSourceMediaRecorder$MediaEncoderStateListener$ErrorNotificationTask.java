package com.sonyericsson.android.camera.recorder.superslowrecorder;

class VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask implements Runnable {
    final /* synthetic */ VariableSourceMediaRecorder$MediaEncoderStateListener this$1;

    private VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask(VariableSourceMediaRecorder$MediaEncoderStateListener variableSourceMediaRecorder$MediaEncoderStateListener) {
        this.this$1 = variableSourceMediaRecorder$MediaEncoderStateListener;
    }

    /* synthetic */ VariableSourceMediaRecorder$MediaEncoderStateListener$ErrorNotificationTask(VariableSourceMediaRecorder$MediaEncoderStateListener variableSourceMediaRecorder$MediaEncoderStateListener, VariableSourceMediaRecorder$1 variableSourceMediaRecorder$1) {
        this(variableSourceMediaRecorder$MediaEncoderStateListener);
    }

    @Override // java.lang.Runnable
    public void run() {
        VariableSourceMediaRecorder.access$1200(this.this$1.this$0).onError();
    }
}
