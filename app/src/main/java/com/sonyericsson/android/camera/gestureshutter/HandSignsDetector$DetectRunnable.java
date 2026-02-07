package com.sonyericsson.android.camera.gestureshutter;

import com.sonyericsson.android.camera.util.CamLog;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class HandSignsDetector$DetectRunnable implements Runnable {
    private int height;
    private ByteBuffer mYuvBuffer;
    final /* synthetic */ HandSignsDetector this$0;
    private int width;

    public HandSignsDetector$DetectRunnable(HandSignsDetector handSignsDetector, int i, int i2, ByteBuffer byteBuffer) {
        this.this$0 = handSignsDetector;
        this.width = i;
        this.height = i2;
        this.mYuvBuffer = byteBuffer;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (HandSignsDetector.access$200(this.this$0)) {
            if (CamLog.VERBOSE) {
                CamLog.d("Starting detection");
            }
            if (!HandSignsDetector.access$100(this.this$0).isInitialized()) {
                HandSignsDetector.access$100(this.this$0).initialize(this.width, this.height);
            }
            byte[] bArr = new byte[this.mYuvBuffer.remaining()];
            this.mYuvBuffer.get(bArr);
            HandSignsDetector.access$700(this.this$0);
            HandSignsNativeWrapper.shrinkYvu420Sp(bArr, this.width, this.height, HandSignsDetector.access$100(this.this$0).getFrame(), HandSignsDetector.access$100(this.this$0).getShrinkRatio());
            HandSignsDetector$DetectResult handSignsDetector$DetectResult = new HandSignsDetector$DetectResult();
            HandSignsDetector.access$700(this.this$0).detect(HandSignsDetector.access$100(this.this$0).getDetectWidth(), HandSignsDetector.access$100(this.this$0).getDetectHeight(), HandSignsDetector.access$100(this.this$0).getFrame(), HandSignsDetector.access$800(this.this$0), handSignsDetector$DetectResult);
            if (CamLog.VERBOSE) {
                CamLog.d("Detect result: " + handSignsDetector$DetectResult);
            }
            if (HandSignsDetector.access$900(this.this$0) != null) {
                if (HandSignsDetector.access$1000(this.this$0) != null) {
                    HandSignsDetector.access$1000(this.this$0).post(new HandSignsDetector$DetectRunnable$1(this, handSignsDetector$DetectResult));
                } else {
                    HandSignsDetector.access$900(this.this$0).onDetectResult(handSignsDetector$DetectResult);
                }
            }
            HandSignsDetector.access$1100(this.this$0);
        }
    }
}
