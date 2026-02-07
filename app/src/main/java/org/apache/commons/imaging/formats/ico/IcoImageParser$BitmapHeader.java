package org.apache.commons.imaging.formats.ico;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class IcoImageParser$BitmapHeader {
    public final int bitCount;
    public final int colorsImportant;
    public final int colorsUsed;
    public final int compression;
    public final int height;
    public final int planes;
    public final int size;
    public final int sizeImage;
    public final int width;
    public final int xPelsPerMeter;
    public final int yPelsPerMeter;

    public IcoImageParser$BitmapHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.size = i;
        this.width = i2;
        this.height = i3;
        this.planes = i4;
        this.bitCount = i5;
        this.compression = i6;
        this.sizeImage = i7;
        this.xPelsPerMeter = i8;
        this.yPelsPerMeter = i9;
        this.colorsUsed = i10;
        this.colorsImportant = i11;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("BitmapHeader");
        printWriter.println("Size: " + this.size);
        printWriter.println("Width: " + this.width);
        printWriter.println("Height: " + this.height);
        printWriter.println("Planes: " + this.planes);
        printWriter.println("BitCount: " + this.bitCount);
        printWriter.println("Compression: " + this.compression);
        printWriter.println("SizeImage: " + this.sizeImage);
        printWriter.println("XPelsPerMeter: " + this.xPelsPerMeter);
        printWriter.println("YPelsPerMeter: " + this.yPelsPerMeter);
        printWriter.println("ColorsUsed: " + this.colorsUsed);
        printWriter.println("ColorsImportant: " + this.colorsImportant);
    }
}
