package org.apache.commons.imaging.formats.icns;

import java.io.PrintWriter;

class IcnsImageParser$IcnsHeader {
    public final int fileSize;
    public final int magic;

    public IcnsImageParser$IcnsHeader(int i, int i2) {
        this.magic = i;
        this.fileSize = i2;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("IcnsHeader");
        printWriter.println("Magic: 0x" + Integer.toHexString(this.magic) + " (" + IcnsType.describeType(this.magic) + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("FileSize: ");
        sb.append(this.fileSize);
        printWriter.println(sb.toString());
        printWriter.println("");
    }
}
