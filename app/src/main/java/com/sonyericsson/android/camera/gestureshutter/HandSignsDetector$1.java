package com.sonyericsson.android.camera.gestureshutter;

import com.sonyericsson.android.camera.util.CamLog;

/* JADX INFO: loaded from: classes.dex */
class HandSignsDetector$1 implements Runnable {
    final /* synthetic */ HandSignsDetector this$0;

    HandSignsDetector$1(HandSignsDetector handSignsDetector) {
        this.this$0 = handSignsDetector;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (HandSignsDetector.access$100(this.this$0)) {
            if (HandSignsDetector.access$200(this.this$0)) {
                HandSignsDetector.access$500(this.this$0).registerPreviewStreamingCallback(HandSignsDetector.access$300(this.this$0), HandSignsDetector.access$400(this.this$0).getHandler());
                if (CamLog.VERBOSE) {
                    CamLog.d("Get frame requested");
                }
            }
        }
    }
}
