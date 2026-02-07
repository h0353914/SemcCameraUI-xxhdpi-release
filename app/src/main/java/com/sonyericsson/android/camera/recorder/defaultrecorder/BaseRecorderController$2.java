package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$2 implements RecorderInterface$OnErrorListener {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$2(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$OnErrorListener
    public void onError() {
        this.this$0.notifyError();
    }
}
