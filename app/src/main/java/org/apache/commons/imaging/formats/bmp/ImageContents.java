package org.apache.commons.imaging.formats.bmp;

/* JADX INFO: loaded from: classes.dex */
class ImageContents {
    final BmpHeaderInfo bhi;
    final byte[] colorTable;
    final byte[] imageData;
    final PixelParser pixelParser;

    public ImageContents(BmpHeaderInfo bmpHeaderInfo, byte[] bArr, byte[] bArr2, PixelParser pixelParser) {
        this.bhi = bmpHeaderInfo;
        this.colorTable = bArr;
        this.imageData = bArr2;
        this.pixelParser = pixelParser;
    }
}
