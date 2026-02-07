package org.apache.commons.imaging.common.bytesource;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.common.BinaryFunctions;

/* JADX INFO: loaded from: classes.dex */
public class ByteSourceInputStream extends ByteSource {
    private static final int BLOCK_SIZE = 1024;
    private ByteSourceInputStream$CacheBlock cacheHead;
    private final InputStream is;
    private byte[] readBuffer;
    private long streamLength;

    static /* synthetic */ ByteSourceInputStream$CacheBlock access$000(ByteSourceInputStream byteSourceInputStream) throws IOException {
        return byteSourceInputStream.readBlock();
    }

    static /* synthetic */ ByteSourceInputStream$CacheBlock access$100(ByteSourceInputStream byteSourceInputStream) throws IOException {
        return byteSourceInputStream.getFirstBlock();
    }

    public ByteSourceInputStream(InputStream inputStream, String str) {
        super(str);
        this.streamLength = -1L;
        this.is = new BufferedInputStream(inputStream);
    }

    private ByteSourceInputStream$CacheBlock readBlock() throws IOException {
        if (this.readBuffer == null) {
            this.readBuffer = new byte[1024];
        }
        int i = this.is.read(this.readBuffer);
        if (i < 1) {
            return null;
        }
        if (i < 1024) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.readBuffer, 0, bArr, 0, i);
            return new ByteSourceInputStream$CacheBlock(this, bArr);
        }
        byte[] bArr2 = this.readBuffer;
        this.readBuffer = null;
        return new ByteSourceInputStream$CacheBlock(this, bArr2);
    }

    private ByteSourceInputStream$CacheBlock getFirstBlock() throws IOException {
        if (this.cacheHead == null) {
            this.cacheHead = readBlock();
        }
        return this.cacheHead;
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public InputStream getInputStream() throws IOException {
        return new ByteSourceInputStream$CacheReadingInputStream(this, null);
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public byte[] getBlock(long j, int i) throws IOException {
        if (j >= 0 && i >= 0) {
            long j2 = ((long) i) + j;
            if (j2 >= 0 && j2 <= this.streamLength) {
                InputStream inputStream = getInputStream();
                BinaryFunctions.skipBytes(inputStream, j);
                byte[] bArr = new byte[i];
                int i2 = 0;
                do {
                    int i3 = inputStream.read(bArr, i2, bArr.length - i2);
                    if (i3 < 1) {
                        throw new IOException("Could not read block.");
                    }
                    i2 += i3;
                } while (i2 < i);
                return bArr;
            }
        }
        throw new IOException("Could not read block (block start: " + j + ", block length: " + i + ", data length: " + this.streamLength + ").");
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public long getLength() throws IOException {
        if (this.streamLength >= 0) {
            return this.streamLength;
        }
        InputStream inputStream = getInputStream();
        long j = 0;
        while (true) {
            long jSkip = inputStream.skip(1024L);
            if (jSkip <= 0) {
                this.streamLength = j;
                return j;
            }
            j += jSkip;
        }
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public byte[] getAll() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (ByteSourceInputStream$CacheBlock firstBlock = getFirstBlock(); firstBlock != null; firstBlock = firstBlock.getNext()) {
            byteArrayOutputStream.write(firstBlock.bytes);
        }
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public String getDescription() {
        return "Inputstream: '" + this.filename + "'";
    }
}
