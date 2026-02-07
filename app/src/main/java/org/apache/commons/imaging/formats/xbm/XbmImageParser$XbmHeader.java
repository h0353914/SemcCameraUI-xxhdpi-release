package org.apache.commons.imaging.formats.xbm;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class XbmImageParser$XbmHeader {
    int height;
    int width;
    int xHot;
    int yHot;

    public XbmImageParser$XbmHeader(int i, int i2, int i3, int i4) {
        this.xHot = -1;
        this.yHot = -1;
        this.width = i;
        this.height = i2;
        this.xHot = i3;
        this.yHot = i4;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("XbmHeader");
        printWriter.println("Width: " + this.width);
        printWriter.println("Height: " + this.height);
        if (this.xHot == -1 || this.yHot == -1) {
            return;
        }
        printWriter.println("X hot: " + this.xHot);
        printWriter.println("Y hot: " + this.yHot);
    }
}
