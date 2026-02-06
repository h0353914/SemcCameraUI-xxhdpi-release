package org.apache.commons.imaging.common.bytesource;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import org.apache.commons.imaging.common.BinaryFunctions;
import org.apache.commons.imaging.util.IoUtils;

public class ByteSourceFile extends ByteSource {
    private final File file;

    public ByteSourceFile(File file) {
        super(file.getName());
        this.file = file;
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public InputStream getInputStream() throws IOException {
        return new BufferedInputStream(new FileInputStream(this.file));
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public byte[] getBlock(long j, int i) throws Throwable {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(this.file, "r");
            if (j >= 0 && i >= 0) {
                long j2 = ((long) i) + j;
                if (j2 >= 0) {
                    try {
                        if (j2 <= randomAccessFile.length()) {
                            byte[] rAFBytes = BinaryFunctions.getRAFBytes(randomAccessFile, j, i, "Could not read value from file");
                            IoUtils.closeQuietly(true, randomAccessFile);
                            return rAFBytes;
                        }
                    } catch (Throwable th) {
                        th = th;
                        IoUtils.closeQuietly(false, randomAccessFile);
                        throw th;
                    }
                }
            }
            throw new IOException("Could not read block (block start: " + j + ", block length: " + i + ", data length: " + randomAccessFile.length() + ").");
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public long getLength() {
        return this.file.length();
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public byte[] getAll() throws Throwable {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream bufferedInputStream = null;
        try {
            InputStream fileInputStream = new FileInputStream(this.file);
            try {
                bufferedInputStream = new BufferedInputStream(fileInputStream);
                bArr = new byte[1024];
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = fileInputStream;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        while (true) {
            int i = bufferedInputStream.read(bArr);
            if (i > 0) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                IoUtils.closeQuietly(true, bufferedInputStream);
                return byteArray;
            }
            IoUtils.closeQuietly(false, bufferedInputStream);
            throw th;
        }
    }

    @Override // org.apache.commons.imaging.common.bytesource.ByteSource
    public String getDescription() {
        return "File: '" + this.file.getAbsolutePath() + "'";
    }
}
