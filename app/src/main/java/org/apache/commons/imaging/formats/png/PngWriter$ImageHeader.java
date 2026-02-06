package org.apache.commons.imaging.formats.png;

class PngWriter$ImageHeader {
    public final byte bitDepth;
    public final byte compressionMethod;
    public final byte filterMethod;
    public final int height;
    public final InterlaceMethod interlaceMethod;
    public final PngColorType pngColorType;
    public final int width;

    public PngWriter$ImageHeader(int i, int i2, byte b, PngColorType pngColorType, byte b2, byte b3, InterlaceMethod interlaceMethod) {
        this.width = i;
        this.height = i2;
        this.bitDepth = b;
        this.pngColorType = pngColorType;
        this.compressionMethod = b2;
        this.filterMethod = b3;
        this.interlaceMethod = interlaceMethod;
    }
}
