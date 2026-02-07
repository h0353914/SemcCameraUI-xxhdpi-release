package com.sonyericsson.android.camera.recorder.defaultrecorder;

import com.sonyericsson.android.camera.recorder.RecorderController$Result;
import com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener;

/* JADX INFO: loaded from: classes.dex */
class BaseRecorderController$3 implements RecorderInterface$OnMaxReachedListener {
    final /* synthetic */ BaseRecorderController this$0;

    BaseRecorderController$3(BaseRecorderController baseRecorderController) {
        this.this$0 = baseRecorderController;
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener
    public void onMaxDurationReached() {
        BaseRecorderController.access$100("onMaxDurationReached() E");
        BaseRecorderController.access$1300(this.this$0);
        BaseRecorderController.access$900(this.this$0, RecorderController$Result.MAX_DURATION_REACHED);
        BaseRecorderController.access$100("onMaxDurationReached() X");
    }

    @Override // com.sonyericsson.android.camera.recorder.RecorderInterface$OnMaxReachedListener
    public void onMaxFileSizeReached() {
        BaseRecorderController.access$100("onMaxFileSizeReached() E");
        BaseRecorderController.access$900(this.this$0, RecorderController$Result.MAX_FILESIZE_REACHED);
        BaseRecorderController.access$100("onMaxFileSizeReached() X");
    }
}
