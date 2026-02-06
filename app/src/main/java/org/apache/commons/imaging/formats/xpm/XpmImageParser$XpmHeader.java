package org.apache.commons.imaging.formats.xpm;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

class XpmImageParser$XpmHeader {
    int height;
    int numCharsPerPixel;
    int numColors;
    Map<Object, XpmImageParser$PaletteEntry> palette = new HashMap();
    int width;
    int xHotSpot;
    boolean xpmExt;
    int yHotSpot;

    public XpmImageParser$XpmHeader(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        this.xHotSpot = -1;
        this.yHotSpot = -1;
        this.width = i;
        this.height = i2;
        this.numColors = i3;
        this.numCharsPerPixel = i4;
        this.xHotSpot = i5;
        this.yHotSpot = i6;
        this.xpmExt = z;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("XpmHeader");
        printWriter.println("Width: " + this.width);
        printWriter.println("Height: " + this.height);
        printWriter.println("NumColors: " + this.numColors);
        printWriter.println("NumCharsPerPixel: " + this.numCharsPerPixel);
        if (this.xHotSpot != -1 && this.yHotSpot != -1) {
            printWriter.println("X hotspot: " + this.xHotSpot);
            printWriter.println("Y hotspot: " + this.yHotSpot);
        }
        printWriter.println("XpmExt: " + this.xpmExt);
    }
}
