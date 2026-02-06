package com.sonyericsson.android.camera.recorder.utility.encoder;

import android.media.MediaFormat;

public interface EncodedDataWriteTask$EncoderStateListener {
    void onEncoderFinished();

    void onEncoderFormatChanged(MediaFormat mediaFormat);
}
