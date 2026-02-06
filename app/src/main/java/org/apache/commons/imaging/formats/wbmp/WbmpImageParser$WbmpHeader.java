package org.apache.commons.imaging.formats.wbmp;

import java.io.PrintWriter;

class WbmpImageParser$WbmpHeader {
    byte fixHeaderField;
    int height;
    int typeField;
    int width;

    public WbmpImageParser$WbmpHeader(int i, byte b, int i2, int i3) {
        this.typeField = i;
        this.fixHeaderField = b;
        this.width = i2;
        this.height = i3;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("WbmpHeader");
        printWriter.println("TypeField: " + this.typeField);
        printWriter.println("FixHeaderField: 0x" + Integer.toHexString(this.fixHeaderField & 255));
        printWriter.println("Width: " + this.width);
        printWriter.println("Height: " + this.height);
    }
}
