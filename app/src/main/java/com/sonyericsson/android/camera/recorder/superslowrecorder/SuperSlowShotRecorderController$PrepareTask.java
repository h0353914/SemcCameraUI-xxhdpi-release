package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.recorder.RecorderParameters;
import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.Callable;

class SuperSlowShotRecorderController$PrepareTask implements Callable<Boolean> {
    private final RecorderParameters mParams;
    final /* synthetic */ SuperSlowShotRecorderController this$0;

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Boolean call() throws Exception {
        return call();
    }

    public SuperSlowShotRecorderController$PrepareTask(SuperSlowShotRecorderController superSlowShotRecorderController, RecorderParameters recorderParameters) {
        this.this$0 = superSlowShotRecorderController;
        this.mParams = recorderParameters;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        SuperSlowShotRecorderController.access$100("prepareInternal() E");
        if (!this.this$0.prepareCallBack()) {
            CamLog.e("prepareCallBack() is failed in PrepareTask.");
            SuperSlowShotRecorderController.access$200(this.this$0);
            return false;
        }
        if (!SuperSlowShotRecorderController.access$301(this.this$0, this.mParams)) {
            CamLog.e("prepareInternal() is failed in PrepareTask.");
            SuperSlowShotRecorderController.access$400(this.this$0);
            return false;
        }
        if (!SuperSlowShotRecorderController.access$500(this.this$0)) {
            CamLog.e("startBypassCamera() is failed in PrepareTask.");
            SuperSlowShotRecorderController.access$600(this.this$0);
            return false;
        }
        SuperSlowShotRecorderController.access$100("prepareInternal() X");
        return true;
    }
}
