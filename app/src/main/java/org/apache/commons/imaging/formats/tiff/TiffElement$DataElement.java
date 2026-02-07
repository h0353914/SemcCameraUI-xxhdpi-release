package org.apache.commons.imaging.formats.tiff;

/* JADX INFO: loaded from: classes.dex */
public abstract class TiffElement$DataElement extends TiffElement {
    private final byte[] data;

    public TiffElement$DataElement(long j, int i, byte[] bArr) {
        super(j, i);
        this.data = bArr;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getDataLength() {
        return this.data.length;
    }
}
