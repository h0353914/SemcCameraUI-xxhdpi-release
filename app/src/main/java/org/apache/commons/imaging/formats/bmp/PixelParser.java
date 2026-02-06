package org.apache.commons.imaging.formats.bmp;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.imaging.ImageReadException;
import org.apache.commons.imaging.common.ImageBuilder;

abstract class PixelParser {
    final BmpHeaderInfo bhi;
    final byte[] colorTable;
    final byte[] imageData;
    final InputStream is;

    public abstract void processImage(ImageBuilder imageBuilder) throws IOException, ImageReadException;

    public PixelParser(BmpHeaderInfo bmpHeaderInfo, byte[] bArr, byte[] bArr2) {
        this.bhi = bmpHeaderInfo;
        this.colorTable = bArr;
        this.imageData = bArr2;
        this.is = new ByteArrayInputStream(bArr2);
    }

    int getColorTableRGB(int i) {
        int i2 = i * 4;
        int i3 = this.colorTable[i2 + 0] & 255;
        return ((this.colorTable[i2 + 2] & 255) << 16) | (-16777216) | ((this.colorTable[i2 + 1] & 255) << 8) | (i3 << 0);
    }
}
