package org.apache.commons.imaging.formats.ico;

import java.io.PrintWriter;

class IcoImageParser$IconInfo {
    public final int bitCount;
    public final byte colorCount;
    public final byte height;
    public final int imageOffset;
    public final int imageSize;
    public final int planes;
    public final byte reserved;
    public final byte width;

    public IcoImageParser$IconInfo(byte b, byte b2, byte b3, byte b4, int i, int i2, int i3, int i4) {
        this.width = b;
        this.height = b2;
        this.colorCount = b3;
        this.reserved = b4;
        this.planes = i;
        this.bitCount = i2;
        this.imageSize = i3;
        this.imageOffset = i4;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("IconInfo");
        printWriter.println("Width: " + ((int) this.width));
        printWriter.println("Height: " + ((int) this.height));
        printWriter.println("ColorCount: " + ((int) this.colorCount));
        printWriter.println("Reserved: " + ((int) this.reserved));
        printWriter.println("Planes: " + this.planes);
        printWriter.println("BitCount: " + this.bitCount);
        printWriter.println("ImageSize: " + this.imageSize);
        printWriter.println("ImageOffset: " + this.imageOffset);
    }
}
