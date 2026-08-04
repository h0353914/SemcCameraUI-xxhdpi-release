
















package org.apache.commons.imaging.formats.bmp;

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
