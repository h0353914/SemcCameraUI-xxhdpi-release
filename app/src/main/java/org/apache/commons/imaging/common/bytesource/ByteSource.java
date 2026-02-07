package org.apache.commons.imaging.common.bytesource;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.common.BinaryFunctions;

/* JADX INFO: loaded from: classes.dex */
public abstract class ByteSource {
    protected final String filename;

    public abstract byte[] getAll() throws IOException;

    public abstract byte[] getBlock(long j, int i) throws IOException;

    public abstract String getDescription();

    public abstract InputStream getInputStream() throws IOException;

    public abstract long getLength() throws IOException;

    public ByteSource(String str) {
        this.filename = str;
    }

    public final InputStream getInputStream(long j) throws Throwable {
        InputStream inputStream;
        try {
            inputStream = getInputStream();
            try {
                BinaryFunctions.skipBytes(inputStream, j);
                return inputStream;
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
    }

    public byte[] getBlock(int i, int i2) throws IOException {
        return getBlock(((long) i) & 4294967295L, i2);
    }

    public final String getFilename() {
        return this.filename;
    }
}
