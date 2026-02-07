package com.sonyericsson.android.camera.recorder.utility.encoder.source;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
class MutableAudioSampleDataSource$DequeuedBuffer {
    private final ByteBuffer mBuffer;
    private final int mIndex;

    static /* synthetic */ int access$000(MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBuffer) {
        return mutableAudioSampleDataSource$DequeuedBuffer.getLimit();
    }

    static /* synthetic */ ByteBuffer access$100(MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBuffer) {
        return mutableAudioSampleDataSource$DequeuedBuffer.mBuffer;
    }

    static /* synthetic */ int access$200(MutableAudioSampleDataSource$DequeuedBuffer mutableAudioSampleDataSource$DequeuedBuffer) {
        return mutableAudioSampleDataSource$DequeuedBuffer.mIndex;
    }

    public MutableAudioSampleDataSource$DequeuedBuffer(int i, ByteBuffer byteBuffer) {
        this.mIndex = i;
        this.mBuffer = byteBuffer;
    }

    private int getLimit() {
        return this.mBuffer.limit();
    }
}
