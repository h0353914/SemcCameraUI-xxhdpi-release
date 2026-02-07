package org.apache.commons.imaging.formats.dcx;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class DcxImageParser$DcxHeader {
    public static final int DCX_ID = 987654321;
    public final int id;
    public final long[] pageTable;

    public DcxImageParser$DcxHeader(int i, long[] jArr) {
        this.id = i;
        this.pageTable = jArr;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("DcxHeader");
        printWriter.println("Id: 0x" + Integer.toHexString(this.id));
        printWriter.println("Pages: " + this.pageTable.length);
        printWriter.println();
    }
}
