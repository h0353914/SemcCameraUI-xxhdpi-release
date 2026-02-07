package org.apache.commons.imaging.formats.jpeg;

import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;

/* JADX INFO: loaded from: classes.dex */
public interface JpegUtils$Visitor {
    boolean beginSOS();

    void visitSOS(int i, byte[] bArr, byte[] bArr2);

    boolean visitSegment(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) throws IOException, ImageReadException;
}
