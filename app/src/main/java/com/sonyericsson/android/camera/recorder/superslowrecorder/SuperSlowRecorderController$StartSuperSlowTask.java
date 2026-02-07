package com.sonyericsson.android.camera.recorder.superslowrecorder;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
class SuperSlowRecorderController$StartSuperSlowTask implements Runnable {
    final /* synthetic */ SuperSlowRecorderController this$0;

    private SuperSlowRecorderController$StartSuperSlowTask(SuperSlowRecorderController superSlowRecorderController) {
        this.this$0 = superSlowRecorderController;
    }

    /* synthetic */ SuperSlowRecorderController$StartSuperSlowTask(SuperSlowRecorderController superSlowRecorderController, SuperSlowRecorderController$1 superSlowRecorderController$1) {
        this(superSlowRecorderController);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (!SuperSlowRecorderController.access$400(this.this$0)) {
                SuperSlowRecorderController.access$500(this.this$0);
            } else {
                SuperSlowRecorderController.access$700(this.this$0).post(new SuperSlowRecorderController$StartSuperSlowTask$1(this));
            }
        } catch (TimeoutException e) {
            if (CamLog.DEBUG) {
                throw new RuntimeException(e);
            }
            SuperSlowRecorderController.access$800(this.this$0);
        }
    }
}
