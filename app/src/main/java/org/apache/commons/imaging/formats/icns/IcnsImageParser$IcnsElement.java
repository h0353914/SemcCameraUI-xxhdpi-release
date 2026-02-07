package org.apache.commons.imaging.formats.icns;

import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
class IcnsImageParser$IcnsElement {
    public final byte[] data;
    public final int elementSize;
    public final int type;

    public IcnsImageParser$IcnsElement(int i, int i2, byte[] bArr) {
        this.type = i;
        this.elementSize = i2;
        this.data = bArr;
    }

    public void dump(PrintWriter printWriter) {
        String str;
        printWriter.println("IcnsElement");
        IcnsType icnsTypeFindAnyType = IcnsType.findAnyType(this.type);
        if (icnsTypeFindAnyType == null) {
            str = "";
        } else {
            str = " " + icnsTypeFindAnyType.toString();
        }
        printWriter.println("Type: 0x" + Integer.toHexString(this.type) + " (" + IcnsType.describeType(this.type) + ")" + str);
        StringBuilder sb = new StringBuilder();
        sb.append("ElementSize: ");
        sb.append(this.elementSize);
        printWriter.println(sb.toString());
        printWriter.println("");
    }
}
