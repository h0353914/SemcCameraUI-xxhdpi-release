package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$4 implements RecorderInterface$RecordTrackListener {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$4(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onStarted() {
        BaseRecorderController.access$100("onStarted() E: Audio Track");
        if (BaseRecorderController.access$1400(this.this$0) != null && BaseRecorderController.access$1400(this.this$0).getCount() > 0) {
            BaseRecorderController.access$1400(this.this$0).countDown();
        }
        BaseRecorderController.access$100("onStarted() X: Audio Track");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onProgress(long j) {
        BaseRecorderController.access$1500(this.this$0, j);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onCompleted() {
        BaseRecorderController.access$100("onCompleted() E: Audio Track");
        BaseRecorderController.access$800(this.this$0);
        BaseRecorderController.access$100("onCompleted() X: Audio Track");
    }
}
