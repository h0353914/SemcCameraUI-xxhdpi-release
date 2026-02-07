package com.sonyericsson.android.camera.recorder.utility.encoder;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class MediaEncoder$3 implements Runnable {
    final /* synthetic */ MediaEncoder this$0;

    MediaEncoder$3(MediaEncoder mediaEncoder) {
        this.this$0 = mediaEncoder;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            MediaEncoder.access$500(this.this$0).await();
            if (MediaEncoder.access$000()) {
                CamLog.d("Start finalization of recording.");
            }
            try {
                this.this$0.stopInputDataSource();
            } catch (InterruptedException unused) {
                CamLog.e("stopInputDataSource is interrupted");
            }
        } catch (InterruptedException unused2) {
            CamLog.e("mRequestFinishSignal is interrupted");
        }
    }
}
