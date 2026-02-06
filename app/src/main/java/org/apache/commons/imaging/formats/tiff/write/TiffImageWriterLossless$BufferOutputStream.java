package org.apache.commons.imaging.formats.tiff.write;

import java.io.IOException;
import java.io.OutputStream;

class TiffImageWriterLossless$BufferOutputStream extends OutputStream {
    private final byte[] buffer;
    private int index;

    public TiffImageWriterLossless$BufferOutputStream(byte[] bArr, int i) {
        this.buffer = bArr;
        this.index = i;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        if (this.index >= this.buffer.length) {
            throw new IOException("Buffer overflow.");
        }
        byte[] bArr = this.buffer;
        int i2 = this.index;
        this.index = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (this.index + i2 > this.buffer.length) {
            throw new IOException("Buffer overflow.");
        }
        System.arraycopy(bArr, i, this.buffer, this.index, i2);
        this.index += i2;
    }
}
