package com.sonymobile.android.media.internal;

import android.media.MediaCodec$BufferInfo;
import java.nio.ByteBuffer;

protected class Track$EncodedBuffer {
    public final int bufferIndex;
    public final MediaCodec$BufferInfo bufferInfo;
    public ByteBuffer byteBuffer = null;
    public boolean containsCopiedBuffer = false;

    Track$EncodedBuffer(int i, MediaCodec$BufferInfo mediaCodec$BufferInfo) {
        this.bufferIndex = i;
        this.bufferInfo = mediaCodec$BufferInfo;
    }
}
