package com.sonyericsson.android.camera.recorder.utility.encoder;

import android.media.MediaFormat;

/* JADX INFO: loaded from: classes.dex */
public interface EncodedDataWriteTask$EncoderStateListener {
    void onEncoderFinished();

    void onEncoderFormatChanged(MediaFormat mediaFormat);
}
