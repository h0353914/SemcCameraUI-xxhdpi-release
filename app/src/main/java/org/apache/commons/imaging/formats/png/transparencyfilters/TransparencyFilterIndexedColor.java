package org.apache.commons.imaging.formats.png.transparencyfilters;

import java.io.IOException;
import org.apache.commons.imaging.ImageReadException;

public class TransparencyFilterIndexedColor extends TransparencyFilter {
    public TransparencyFilterIndexedColor(byte[] bArr) {
        super(bArr);
    }

    @Override // org.apache.commons.imaging.formats.png.transparencyfilters.TransparencyFilter
    public int filter(int i, int i2) throws IOException, ImageReadException {
        int length = getLength();
        if (i2 >= length) {
            return i;
        }
        if (i2 < 0 || i2 > length) {
            throw new ImageReadException("TransparencyFilterIndexedColor index: " + i2 + ", bytes.length: " + length);
        }
        return ((getByte(i2) & 255) << 24) | (i & 16777215);
    }
}
