package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener;

class BaseRecorderController$5 implements RecorderInterface$RecordTrackListener {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$5(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onStarted() {
        BaseRecorderController.access$100("onStarted() E: Video Track");
        if (BaseRecorderController.access$1400(this.this$0) != null && BaseRecorderController.access$1400(this.this$0).getCount() > 0) {
            BaseRecorderController.access$1400(this.this$0).countDown();
        }
        BaseRecorderController.access$100("onStarted() X: Video Track");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onProgress(long j) {
        BaseRecorderController.access$1500(this.this$0, j);
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$RecordTrackListener
    public void onCompleted() {
        BaseRecorderController.access$100("onCompleted() E: Video Track");
        BaseRecorderController.access$100("onCompleted() X: Video Track");
    }
}
