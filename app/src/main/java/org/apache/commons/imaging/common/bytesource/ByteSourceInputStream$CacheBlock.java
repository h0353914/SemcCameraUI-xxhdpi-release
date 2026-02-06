package org.apache.commons.imaging.common.bytesource;

import java.io.IOException;

class ByteSourceInputStream$CacheBlock {
    public final byte[] bytes;
    private ByteSourceInputStream$CacheBlock next;
    final /* synthetic */ ByteSourceInputStream this$0;
    private boolean triedNext;

    public ByteSourceInputStream$CacheBlock(ByteSourceInputStream byteSourceInputStream, byte[] bArr) {
        this.this$0 = byteSourceInputStream;
        this.bytes = bArr;
    }

    public ByteSourceInputStream$CacheBlock getNext() throws IOException {
        if (this.next != null) {
            return this.next;
        }
        if (this.triedNext) {
            return null;
        }
        this.triedNext = true;
        this.next = ByteSourceInputStream.access$000(this.this$0);
        return this.next;
    }
}
