package org.apache.commons.imaging.common.bytesource;

import java.io.IOException;
import java.io.InputStream;

class ByteSourceInputStream$CacheReadingInputStream extends InputStream {
    private ByteSourceInputStream$CacheBlock block;
    private int blockIndex;
    private boolean readFirst;
    final /* synthetic */ ByteSourceInputStream this$0;

    private ByteSourceInputStream$CacheReadingInputStream(ByteSourceInputStream byteSourceInputStream) {
        this.this$0 = byteSourceInputStream;
    }

    /* synthetic */ ByteSourceInputStream$CacheReadingInputStream(ByteSourceInputStream byteSourceInputStream, ByteSourceInputStream$1 byteSourceInputStream$1) {
        this(byteSourceInputStream);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.block == null) {
            if (this.readFirst) {
                return -1;
            }
            this.block = ByteSourceInputStream.access$100(this.this$0);
            this.readFirst = true;
        }
        if (this.block != null && this.blockIndex >= this.block.bytes.length) {
            this.block = this.block.getNext();
            this.blockIndex = 0;
        }
        if (this.block == null || this.blockIndex >= this.block.bytes.length) {
            return -1;
        }
        byte[] bArr = this.block.bytes;
        int i = this.blockIndex;
        this.blockIndex = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.block == null) {
            if (this.readFirst) {
                return -1;
            }
            this.block = ByteSourceInputStream.access$100(this.this$0);
            this.readFirst = true;
        }
        if (this.block != null && this.blockIndex >= this.block.bytes.length) {
            this.block = this.block.getNext();
            this.blockIndex = 0;
        }
        if (this.block == null || this.blockIndex >= this.block.bytes.length) {
            return -1;
        }
        int iMin = Math.min(i2, this.block.bytes.length - this.blockIndex);
        System.arraycopy(this.block.bytes, this.blockIndex, bArr, i, iMin);
        this.blockIndex += iMin;
        return iMin;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            if (this.block == null) {
                if (this.readFirst) {
                    return -1L;
                }
                this.block = ByteSourceInputStream.access$100(this.this$0);
                this.readFirst = true;
            }
            if (this.block != null && this.blockIndex >= this.block.bytes.length) {
                this.block = this.block.getNext();
                this.blockIndex = 0;
            }
            if (this.block == null || this.blockIndex >= this.block.bytes.length) {
                break;
            }
            int iMin = Math.min((int) Math.min(1024L, j2), this.block.bytes.length - this.blockIndex);
            this.blockIndex += iMin;
            j2 -= (long) iMin;
        }
        return j - j2;
    }
}
