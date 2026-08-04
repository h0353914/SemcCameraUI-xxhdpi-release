package org.apache.commons.imaging.common.bytesource;

import org.apache.commons.imaging.ImageReadException;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.common.BinaryFunctions;

public abstract class ByteSource {
    protected final String filename;

    public abstract byte[] getAll() throws IOException, ImageReadException;

    public abstract byte[] getBlock(long j, int i) throws IOException, ImageReadException;

    public abstract String getDescription();

    public abstract InputStream getInputStream() throws IOException;

    public abstract long getLength() throws IOException;

    public ByteSource(String str) {
        this.filename = str;
    }

    public final InputStream getInputStream(long j) throws IOException, ImageReadException {
        InputStream inputStream;
        try {
            inputStream = getInputStream();
            try {
                BinaryFunctions.skipBytes(inputStream, j);
                return inputStream;
            } catch (Exception th) {
                
                if (inputStream != null) {
                    inputStream.close();
                }
                throw new ImageReadException("Error", th);
            }
        } catch (Exception th2) {
            
            inputStream = null;
            throw new ImageReadException("Error", th2);
        }
    }

    public byte[] getBlock(int i, int i2) throws IOException, ImageReadException {
        return getBlock(i & 4294967295L, i2);
    }

    public final String getFilename() {
        return this.filename;
    }
}
