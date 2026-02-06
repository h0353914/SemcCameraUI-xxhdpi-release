package com.sonyericsson.android.camera.recorder.utility.encoder;

import android.media.MediaFormat;
import com.sonyericsson.android.camera.util.CamLog;

class MediaEncoder$2 implements EncodedDataWriteTask$EncoderStateListener {
    final /* synthetic */ MediaEncoder this$0;

    MediaEncoder$2(MediaEncoder mediaEncoder) {
        this.this$0 = mediaEncoder;
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.EncodedDataWriteTask$EncoderStateListener
    public void onEncoderFormatChanged(MediaFormat mediaFormat) {
        MediaEncoder.access$100(this.this$0).countDown();
        try {
            MediaEncoder.access$300(this.this$0).await();
        } catch (InterruptedException unused) {
            CamLog.e("mMuxerStartedSignal is interrupted.");
        }
    }

    @Override // com.sonyericsson.android.camera.recorder.utility.encoder.EncodedDataWriteTask$EncoderStateListener
    public void onEncoderFinished() {
        MediaEncoder.access$400(this.this$0).countDown();
    }
}
