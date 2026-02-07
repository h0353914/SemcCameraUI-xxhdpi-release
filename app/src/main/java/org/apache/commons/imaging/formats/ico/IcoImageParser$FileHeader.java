package org.apache.commons.imaging.formats.ico;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class IcoImageParser$FileHeader {
    public final int iconCount;
    public final int iconType;
    public final int reserved;

    public IcoImageParser$FileHeader(int i, int i2, int i3) {
        this.reserved = i;
        this.iconType = i2;
        this.iconCount = i3;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("FileHeader");
        printWriter.println("Reserved: " + this.reserved);
        printWriter.println("IconType: " + this.iconType);
        printWriter.println("IconCount: " + this.iconCount);
        printWriter.println();
    }
}
