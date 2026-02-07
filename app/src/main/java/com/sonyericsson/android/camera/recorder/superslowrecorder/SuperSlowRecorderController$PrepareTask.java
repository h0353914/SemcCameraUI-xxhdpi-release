package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$PrepareTask implements Callable<Boolean> {
    private final RecorderParameters mParams;
    final /* synthetic */ SuperSlowRecorderController this$0;

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Boolean call() throws Exception {
        return call();
    }

    public SuperSlowRecorderController$PrepareTask(SuperSlowRecorderController superSlowRecorderController, RecorderParameters recorderParameters) {
        this.this$0 = superSlowRecorderController;
        this.mParams = recorderParameters;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        if (SuperSlowRecorderController.access$101(this.this$0, this.mParams)) {
            return true;
        }
        CamLog.e("prepareInternal() is failed in PrepareTask.");
        SuperSlowRecorderController.access$200(this.this$0);
        return false;
    }
}
