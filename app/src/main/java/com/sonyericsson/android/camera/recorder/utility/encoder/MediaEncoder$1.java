package com.sonyericsson.android.camera.recorder.utility.encoder;

import com.sonyericsson.android.camera.util.CamLog;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
class MediaEncoder$1 implements Runnable {
    final /* synthetic */ MediaEncoder this$0;

    MediaEncoder$1(MediaEncoder mediaEncoder) {
        this.this$0 = mediaEncoder;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (MediaEncoder.access$000()) {
            CamLog.d("### START RECODING ###");
        }
        MediaEncoder.access$102(this.this$0, new CountDownLatch(MediaEncoder.access$200(this.this$0).length));
        boolean z = true;
        MediaEncoder.access$302(this.this$0, new CountDownLatch(1));
        MediaEncoder.access$402(this.this$0, new CountDownLatch(MediaEncoder.access$200(this.this$0).length));
        this.this$0.startEncoders();
        this.this$0.startInputDataSource();
        this.this$0.startEncodedDataWriteTasks();
        this.this$0.sendOnStartedEvent();
        try {
            this.this$0.startMediaMuxerAfterEncodedFormatIsFixed();
            this.this$0.waitToCompleteEncoding();
            this.this$0.stopEncoders();
            try {
                this.this$0.stopMuxer();
            } catch (IllegalStateException unused) {
                CamLog.e("IllegalStateException occur at stopMuxer().");
                z = false;
            }
            this.this$0.release();
            this.this$0.sendOnFinishedEvent(z);
            if (MediaEncoder.access$000()) {
                CamLog.d("### END RECORDING ###");
            }
        } catch (InterruptedException unused2) {
            CamLog.e("startMediaMuxerAfterEncodedFormatIsFixed() is interrupted");
            this.this$0.stopEncoders();
        }
    }
}
