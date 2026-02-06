package org.apache.commons.imaging.formats.pcx;

import java.io.PrintWriter;

class PcxImageParser$PcxHeader {
    public static final int ENCODING_RLE = 1;
    public static final int ENCODING_UNCOMPRESSED = 0;
    public static final int PALETTE_INFO_COLOR = 1;
    public static final int PALETTE_INFO_GRAYSCALE = 2;
    public final int bitsPerPixel;
    public final int bytesPerLine;
    public final int[] colormap;
    public final int encoding;
    public final int hDpi;
    public final int hScreenSize;
    public final int manufacturer;
    public final int nPlanes;
    public final int paletteInfo;
    public final int reserved;
    public final int vDpi;
    public final int vScreenSize;
    public final int version;
    public final int xMax;
    public final int xMin;
    public final int yMax;
    public final int yMin;

    public PcxImageParser$PcxHeader(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int[] iArr, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.manufacturer = i;
        this.version = i2;
        this.encoding = i3;
        this.bitsPerPixel = i4;
        this.xMin = i5;
        this.yMin = i6;
        this.xMax = i7;
        this.yMax = i8;
        this.hDpi = i9;
        this.vDpi = i10;
        this.colormap = iArr;
        this.reserved = i11;
        this.nPlanes = i12;
        this.bytesPerLine = i13;
        this.paletteInfo = i14;
        this.hScreenSize = i15;
        this.vScreenSize = i16;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("PcxHeader");
        printWriter.println("Manufacturer: " + this.manufacturer);
        printWriter.println("Version: " + this.version);
        printWriter.println("Encoding: " + this.encoding);
        printWriter.println("BitsPerPixel: " + this.bitsPerPixel);
        printWriter.println("xMin: " + this.xMin);
        printWriter.println("yMin: " + this.yMin);
        printWriter.println("xMax: " + this.xMax);
        printWriter.println("yMax: " + this.yMax);
        printWriter.println("hDpi: " + this.hDpi);
        printWriter.println("vDpi: " + this.vDpi);
        printWriter.print("ColorMap: ");
        for (int i = 0; i < this.colormap.length; i++) {
            if (i > 0) {
                printWriter.print(",");
            }
            printWriter.print("(" + ((this.colormap[i] >> 16) & 255) + "," + ((this.colormap[i] >> 8) & 255) + "," + (this.colormap[i] & 255) + ")");
        }
        printWriter.println();
        printWriter.println("Reserved: " + this.reserved);
        printWriter.println("nPlanes: " + this.nPlanes);
        printWriter.println("BytesPerLine: " + this.bytesPerLine);
        printWriter.println("PaletteInfo: " + this.paletteInfo);
        printWriter.println("hScreenSize: " + this.hScreenSize);
        printWriter.println("vScreenSize: " + this.vScreenSize);
        printWriter.println();
    }
}
